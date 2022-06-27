contract main {




// =====================  Runtime code  =====================


#
#  - buyNow(uint256 arg1)
#  - claim(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address feeManagerAddress;
address sub_c2d873a8Address;
uint256 stor253;
uint256 stor254;
mapping of struct auctionMap;
array of struct stor256;
mapping of uint256 stor257;
array of struct stor258;
mapping of struct sub_59b67ea5;
array of struct stor260;
mapping of struct sub_38efe2eb;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_38efe2eb(?) payable {
    require calldata.size - 4 >= 32
    return sub_38efe2eb[arg1].field_0, 
           address(sub_38efe2eb[arg1].field_256),
           sub_38efe2eb[arg1].field_512,
           address(sub_38efe2eb[arg1].field_768),
           sub_38efe2eb[arg1].field_1024,
           sub_38efe2eb[arg1].field_1280
}

function sub_59b67ea5(?) payable {
    require calldata.size - 4 >= 32
    return sub_59b67ea5[arg1].field_0, 
           address(sub_59b67ea5[arg1].field_256),
           sub_59b67ea5[arg1].field_512,
           address(sub_59b67ea5[arg1].field_768),
           sub_59b67ea5[arg1].field_1024,
           sub_59b67ea5[arg1].field_1280
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_c2d873a8(?) payable {
    return sub_c2d873a8Address
}

function feeManager() payable {
    return feeManagerAddress
}

function auctionMap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return auctionMap[arg1].field_0, 
           address(auctionMap[arg1].field_256),
           auctionMap[arg1].field_512,
           auctionMap[arg1].field_768,
           address(auctionMap[arg1].field_1024),
           auctionMap[arg1].field_1280,
           auctionMap[arg1].field_1536,
           auctionMap[arg1].field_1792,
           auctionMap[arg1].field_2048,
           auctionMap[arg1].field_2304,
           bool(uint8(auctionMap[arg1].field_2560))
}

function _fallback() payable {
    revert
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_1e6fc5f3(?) payable {
    require calldata.size - 4 >= 96
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0, 'Caller is not an admin'
    if arg2 >= arg3:
        revert with 0, 'invalid time'
    if arg3 <= block.timestamp:
        revert with 0, 'invalid time'
    if not uint8(auctionMap[arg1].field_2560):
        revert with 0, 'not active'
    auctionMap[arg1].field_1792 = arg2
    auctionMap[arg1].field_2048 = arg3
    emit 0xe42616d3: arg2, arg3, arg1
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function cancel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(auctionMap[arg1].field_2560):
        revert with 0, 'not active'
    if address(auctionMap[arg1].field_256) != msg.sender:
        revert with 0, 'permission denied'
    if address(sub_59b67ea5[arg1].field_256):
        revert with 0, 'already had bidder'
    uint8(auctionMap[arg1].field_2560) = 0
    require ext_code.size(sub_c2d873a8Address)
    call sub_c2d873a8Address.0xf242432a with:
         gas gas_remaining wei
        args address(this.address), address(auctionMap[arg1].field_256), auctionMap[arg1].field_512, auctionMap[arg1].field_768, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cancel(arg1);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
    if not uint8(roleAdmin[0][address(arg1)].field_0):
        uint8(roleAdmin[0][address(arg1)].field_0) = 1
        emit RoleGranted(0, arg1, msg.sender);
    feeManagerAddress = arg2
    sub_c2d873a8Address = arg3
    stor253++
    stor254++
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_20b6bec4(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require ext_code.size(sub_c2d873a8Address)
    staticcall sub_c2d873a8Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'not enough tokens'
    if not address(arg2):
        revert with 0, 'invalid address'
    if not arg3:
        revert with 0, 'invalid price'
    if arg5 >= arg6:
        revert with 0, 'invalid time'
    auctionMap[stor253].field_0 = stor253
    address(auctionMap[stor253].field_256) = msg.sender
    auctionMap[stor253].field_512 = arg1
    auctionMap[stor253].field_768 = arg4
    address(auctionMap[stor253].field_1024) = address(arg2)
    auctionMap[stor253].field_1280 = arg3
    auctionMap[stor253].field_1536 = 0
    auctionMap[stor253].field_1792 = arg5
    auctionMap[stor253].field_2048 = arg6
    auctionMap[stor253].field_2304 = arg7
    uint8(auctionMap[stor253].field_2560) = 1
    if not stor257[stor253]:
        stor256.length++
        stor256[stor256.length].field_0 = stor253
        stor257[stor253] = stor256.length
    if not stor258[arg1][1][stor253].field_0:
        stor258[arg1].field_0++
        stor258[arg1][stor258[arg1].field_0].field_0 = stor253
        stor258[arg1][1][stor253].field_0 = stor258[arg1].field_0
    require ext_code.size(sub_c2d873a8Address)
    call sub_c2d873a8Address.0xf242432a with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor253++
    emit 0x13552fc3: address(arg2), arg4, arg3, arg5, arg6, stor253, msg.sender, arg1
    return stor253
}

function sub_6440e051(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    if stor260[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor260[arg1].field_0
    mem[64] = (32 * stor260[arg1].field_0) + 128
    if not stor260[arg1].field_0:
        mem[0] = arg1
        mem[32] = 260
        if var31002 >= var31001:
            mem[(32 * stor260[arg1].field_0) + 128] = 32
            mem[(32 * stor260[arg1].field_0) + 160] = stor260[arg1].field_0
            idx = 0
            s = 128
            t = (32 * stor260[arg1].field_0) + 192
            while idx < mem[96]:
                _179 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_179 + 44 len 20]
                mem[t + 64] = mem[_179 + 64]
                mem[t + 96] = mem[_179 + 108 len 20]
                mem[t + 128] = mem[_179 + 128]
                mem[t + 160] = mem[_179 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len (225 * stor260[arg1].field_0) + -mem[64] + 192
        if var37001 < stor[var37002]:
            mem[0] = var41001
            mem[32] = 261
            mem[64] = (32 * stor260[arg1].field_0) + 320
            mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[var41001].field_0
            mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var41001].field_256)
            mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var41001].field_512
            mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var41001].field_768)
            mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var41001].field_1024
            mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var41001].field_1280
            s = var41001
            idx = var41008
            while idx < stor260[arg1].field_0:
                mem[(32 * idx) + 128] = (32 * stor260[arg1].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 260
                if idx + 1 >= stor260[arg1].field_0:
                    _377 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor260[arg1].field_0
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < stor260[arg1].field_0:
                        _400 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_400 + 44 len 20]
                        mem[u + 64] = mem[_400 + 64]
                        mem[u + 96] = mem[_400 + 108 len 20]
                        mem[u + 128] = mem[_400 + 128]
                        mem[u + 160] = mem[_400 + 160]
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 192
                        mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                        mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var41001].field_256)
                        mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var41001].field_512
                        mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var41001].field_768)
                        mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var41001].field_1024
                        mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var41001].field_1280
                        idx = idx + 1
                        t = t + 32
                        u = u + 192
                        continue 
                    return memory
                      from mem[64]
                       len _377 + (192 * stor260[arg1].field_0) + -mem[64] + 64
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[0] = stor260[arg1][idx].field_512
                mem[32] = 261
                mem[64] = mem[64] + 192
                mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[stor260[arg1][idx].field_512].field_0
                mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var41001].field_256)
                mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var41001].field_512
                mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var41001].field_768)
                mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var41001].field_1024
                mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var41001].field_1280
                s = stor260[arg1][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor260[arg1].field_0) + 320
        mem[(32 * stor260[arg1].field_0) + 128] = 0
        mem[(32 * stor260[arg1].field_0) + 160] = 0
        mem[(32 * stor260[arg1].field_0) + 192] = 0
        mem[(32 * stor260[arg1].field_0) + 224] = 0
        mem[(32 * stor260[arg1].field_0) + 256] = 0
        mem[(32 * stor260[arg1].field_0) + 288] = 0
        mem[var14001] = (32 * stor260[arg1].field_0) + 128
        s = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * stor260[arg1].field_0) + 128] = 0
            mem[(32 * stor260[arg1].field_0) + 160] = 0
            mem[(32 * stor260[arg1].field_0) + 192] = 0
            mem[(32 * stor260[arg1].field_0) + 224] = 0
            mem[(32 * stor260[arg1].field_0) + 256] = 0
            mem[(32 * stor260[arg1].field_0) + 288] = 0
            mem[s + 32] = (32 * stor260[arg1].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 260
        if var38002 >= var38001:
            _221 = mem[64]
            mem[mem[64]] = 32
            _222 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _222:
                _263 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_263 + 44 len 20]
                mem[t + 64] = mem[_263 + 64]
                mem[t + 96] = mem[_263 + 108 len 20]
                mem[t + 128] = mem[_263 + 128]
                mem[t + 160] = mem[_263 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _221 + (192 * _222) + -mem[64] + 64
        if var44001 < stor[var44002]:
            mem[0] = var48001
            mem[32] = 261
            _425 = mem[64]
            mem[64] = mem[64] + 192
            mem[_425] = sub_38efe2eb[var48001].field_0
            mem[_425 + 32] = address(sub_38efe2eb[var48001].field_256)
            mem[_425 + 64] = sub_38efe2eb[var48001].field_512
            mem[_425 + 96] = address(sub_38efe2eb[var48001].field_768)
            mem[_425 + 128] = sub_38efe2eb[var48001].field_1024
            mem[_425 + 160] = sub_38efe2eb[var48001].field_1280
            _426 = mem[96]
            s = var48001
            idx = var48008
            while idx < _426:
                mem[(32 * idx) + 128] = _425
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 260
                if idx + 1 >= stor260[arg1].field_0:
                    _429 = mem[64]
                    mem[mem[64]] = 32
                    _430 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _430:
                        _440 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_440 + 44 len 20]
                        mem[u + 64] = mem[_440 + 64]
                        mem[u + 96] = mem[_440 + 108 len 20]
                        mem[u + 128] = mem[_440 + 128]
                        mem[u + 160] = mem[_440 + 160]
                        mem[0] = s
                        mem[32] = 261
                        _425 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_425] = sub_38efe2eb[s].field_0
                        mem[_425 + 32] = address(sub_38efe2eb[var48001].field_256)
                        mem[_425 + 64] = sub_38efe2eb[var48001].field_512
                        mem[_425 + 96] = address(sub_38efe2eb[var48001].field_768)
                        mem[_425 + 128] = sub_38efe2eb[var48001].field_1024
                        mem[_425 + 160] = sub_38efe2eb[var48001].field_1280
                        idx = idx + 1
                        t = t + 32
                        u = u + 192
                        continue 
                    return memory
                      from mem[64]
                       len _429 + (192 * _430) + -mem[64] + 64
                if idx + 1 >= stor260[arg1].field_0:
                    revert with 0, 50
                mem[0] = stor260[arg1][idx].field_512
                mem[32] = 261
                _425 = mem[64]
                mem[64] = mem[64] + 192
                mem[_425] = sub_38efe2eb[stor260[arg1][idx].field_512].field_0
                mem[_425 + 32] = address(sub_38efe2eb[var48001].field_256)
                mem[_425 + 64] = sub_38efe2eb[var48001].field_512
                mem[_425 + 96] = address(sub_38efe2eb[var48001].field_768)
                mem[_425 + 128] = sub_38efe2eb[var48001].field_1024
                mem[_425 + 160] = sub_38efe2eb[var48001].field_1280
                s = stor260[arg1][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function bid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[128] = address(sub_59b67ea5[arg1].field_256)
    mem[160] = sub_59b67ea5[arg1].field_512
    mem[192] = address(sub_59b67ea5[arg1].field_768)
    mem[224] = sub_59b67ea5[arg1].field_1024
    mem[256] = sub_59b67ea5[arg1].field_1280
    if not uint8(auctionMap[arg1].field_2560):
        revert with 0, 'not active'
    if auctionMap[arg1].field_2048 <= block.timestamp:
        revert with 0, 'expired'
    if msg.sender == address(sub_59b67ea5[arg1].field_256):
        revert with 0, 'no need to bid'
    if sub_59b67ea5[arg1].field_1024 > !auctionMap[arg1].field_2304:
        revert with 0, 17
    if sub_59b67ea5[arg1].field_1024 + auctionMap[arg1].field_2304 > arg2:
        revert with 0, 'invalid price'
    mem[288] = stor254
    mem[320] = msg.sender
    mem[352] = arg1
    mem[384] = address(auctionMap[arg1].field_1024)
    mem[416] = arg2
    mem[448] = block.timestamp
    sub_38efe2eb[stor254].field_0 = stor254
    address(sub_38efe2eb[stor254].field_256) = msg.sender
    sub_38efe2eb[stor254].field_512 = arg1
    address(sub_38efe2eb[stor254].field_768) = address(auctionMap[arg1].field_1024)
    sub_38efe2eb[stor254].field_1024 = arg2
    sub_38efe2eb[stor254].field_1280 = block.timestamp
    if not stor260[arg1][1][stor254].field_0:
        stor260[arg1].field_0++
        stor260[arg1][stor260[arg1].field_0].field_0 = stor254
        stor260[arg1][1][stor254].field_0 = stor260[arg1].field_0
    if auctionMap[arg1].field_2048 < block.timestamp:
        revert with 0, 17
    if auctionMap[arg1].field_2048 - block.timestamp <= 900:
        if auctionMap[arg1].field_2048 > -901:
            revert with 0, 17
        auctionMap[arg1].field_2048 += 900
        emit 0xe42616d3: auctionMap[arg1].field_1792, auctionMap[arg1].field_2048 + 900, arg1
    if not sub_59b67ea5[arg1].field_1024:
        mem[516] = msg.sender
        mem[548] = this.address
        mem[580] = arg2
        mem[480] = 100
        mem[516 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[512 len 4] = unknown_0x23b872dd(?????)
        mem[612] = 32
        mem[644] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(auctionMap[arg1].field_1024)):
            revert with 0, 'Address: call to non-contract'
        mem[676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[776] = 0
        call address(auctionMap[arg1].field_1024) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_59b67ea5[arg1].field_0:
                    revert with memory
                      from 128
                       len sub_59b67ea5[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_59b67ea5[arg1].field_0:
                require sub_59b67ea5[arg1].field_0 >= 32
                require address(sub_59b67ea5[arg1].field_256) == bool(address(sub_59b67ea5[arg1].field_256))
                if not address(sub_59b67ea5[arg1].field_256):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[708] == bool(mem[708])
                if not mem[708]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[516] = address(sub_59b67ea5[arg1].field_256)
        mem[548] = sub_59b67ea5[arg1].field_1024
        mem[480] = 68
        mem[516 len 28] = Mask(224, 0, sub_59b67ea5[arg1].field_256)
        mem[512 len 4] = unknown_0xa9059cbb(?????)
        mem[580] = 32
        mem[612] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(auctionMap[arg1].field_1024)):
            revert with 0, 'Address: call to non-contract'
        mem[644 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, sub_59b67ea5[arg1].field_256), uint32(sub_59b67ea5[arg1].field_256), sub_59b67ea5[arg1].field_1024, 0
        mem[712] = 0
        call address(auctionMap[arg1].field_1024) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, sub_59b67ea5[arg1].field_256), uint32(sub_59b67ea5[arg1].field_256), sub_59b67ea5[arg1].field_1024, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, sub_59b67ea5[arg1].field_256), uint32(sub_59b67ea5[arg1].field_256), sub_59b67ea5[arg1].field_1024, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if sub_59b67ea5[arg1].field_0:
                    revert with memory
                      from 128
                       len sub_59b67ea5[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_59b67ea5[arg1].field_0:
                require sub_59b67ea5[arg1].field_0 >= 32
                require address(sub_59b67ea5[arg1].field_256) == bool(address(sub_59b67ea5[arg1].field_256))
                if not address(sub_59b67ea5[arg1].field_256):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[680] = msg.sender
            mem[712] = this.address
            mem[744] = arg2
            mem[644] = 100
            mem[676 len 4] = unknown_0x23b872dd(?????)
            mem[776] = 32
            mem[808] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(auctionMap[arg1].field_1024)):
                revert with 0, 'Address: call to non-contract'
            mem[840 len 128] = 0, msg.sender, address(this.address), arg2, 0
            mem[940] = 0
            call address(auctionMap[arg1].field_1024) with:
               funct Mask(32, 224, 0, msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if sub_59b67ea5[arg1].field_0:
                        revert with memory
                          from 128
                           len sub_59b67ea5[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sub_59b67ea5[arg1].field_0:
                    require sub_59b67ea5[arg1].field_0 >= 32
                    require address(sub_59b67ea5[arg1].field_256) == bool(address(sub_59b67ea5[arg1].field_256))
                    if not address(sub_59b67ea5[arg1].field_256):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[872 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[872] == bool(mem[872])
                    if not mem[872]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[644] = return_data.size
            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[676] == bool(mem[676])
                if not mem[676]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 681] = msg.sender
            mem[ceil32(return_data.size) + 713] = this.address
            mem[ceil32(return_data.size) + 745] = arg2
            mem[ceil32(return_data.size) + 645] = 100
            mem[ceil32(return_data.size) + 677 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 777] = 32
            mem[ceil32(return_data.size) + 809] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(auctionMap[arg1].field_1024)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 841 len 128] = 0, msg.sender, address(this.address), arg2, 0
            mem[ceil32(return_data.size) + 941] = 0
            call address(auctionMap[arg1].field_1024) with:
               funct Mask(32, 224, 0, msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if sub_59b67ea5[arg1].field_0:
                        revert with memory
                          from 128
                           len sub_59b67ea5[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sub_59b67ea5[arg1].field_0:
                    require sub_59b67ea5[arg1].field_0 >= 32
                    require address(sub_59b67ea5[arg1].field_256) == bool(address(sub_59b67ea5[arg1].field_256))
                    if not address(sub_59b67ea5[arg1].field_256):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 873 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 942 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 873] == bool(mem[ceil32(return_data.size) + 873])
                    if not mem[ceil32(return_data.size) + 873]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    sub_59b67ea5[arg1].field_0 = stor254
    address(sub_59b67ea5[arg1].field_256) = msg.sender
    sub_59b67ea5[arg1].field_512 = arg1
    address(sub_59b67ea5[arg1].field_768) = address(auctionMap[arg1].field_1024)
    sub_59b67ea5[arg1].field_1024 = arg2
    sub_59b67ea5[arg1].field_1280 = block.timestamp
    stor254++
    emit Bid(arg2, stor254, msg.sender, arg1);
    return stor254
}

function getAuctions() payable {
    if stor256.length > test266151307():
        revert with 0, 65
    mem[96] = stor256.length
    mem[64] = (32 * stor256.length) + 128
    if not stor256.length:
        if var28002 >= stor256.length:
            mem[(32 * stor256.length) + 128] = 32
            mem[(32 * stor256.length) + 160] = stor256.length
            idx = 0
            s = 128
            t = (32 * stor256.length) + 192
            while idx < mem[96]:
                _210 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_210 + 44 len 20]
                mem[t + 64] = mem[_210 + 64]
                mem[t + 96] = mem[_210 + 96]
                mem[t + 128] = mem[_210 + 140 len 20]
                mem[t + 160] = mem[_210 + 160]
                mem[t + 192] = mem[_210 + 192]
                mem[t + 224] = mem[_210 + 224]
                mem[t + 256] = mem[_210 + 256]
                mem[t + 288] = mem[_210 + 288]
                mem[t + 320] = bool(mem[_210 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len (385 * stor256.length) + -mem[64] + 192
        if var34001 < stor256.length:
            mem[0] = var38001
            mem[32] = 255
            mem[64] = (32 * stor256.length) + 480
            mem[(32 * stor256.length) + 128] = auctionMap[var38001].field_0
            mem[(32 * stor256.length) + 160] = address(auctionMap[var38001].field_256)
            mem[(32 * stor256.length) + 192] = auctionMap[var38001].field_512
            mem[(32 * stor256.length) + 224] = auctionMap[var38001].field_768
            mem[(32 * stor256.length) + 256] = address(auctionMap[var38001].field_1024)
            mem[(32 * stor256.length) + 288] = auctionMap[var38001].field_1280
            mem[(32 * stor256.length) + 320] = auctionMap[var38001].field_1536
            mem[(32 * stor256.length) + 352] = auctionMap[var38001].field_1792
            mem[(32 * stor256.length) + 384] = auctionMap[var38001].field_2048
            mem[(32 * stor256.length) + 416] = auctionMap[var38001].field_2304
            mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var38001].field_2560))
            s = var38001
            idx = var38008
            while idx < stor256.length:
                mem[(32 * idx) + 128] = (32 * stor256.length) + 128
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor256.length:
                    _449 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor256.length
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < stor256.length:
                        _481 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_481 + 44 len 20]
                        mem[u + 64] = mem[_481 + 64]
                        mem[u + 96] = mem[_481 + 96]
                        mem[u + 128] = mem[_481 + 140 len 20]
                        mem[u + 160] = mem[_481 + 160]
                        mem[u + 192] = mem[_481 + 192]
                        mem[u + 224] = mem[_481 + 224]
                        mem[u + 256] = mem[_481 + 256]
                        mem[u + 288] = mem[_481 + 288]
                        mem[u + 320] = bool(mem[_481 + 320])
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                        mem[(32 * stor256.length) + 160] = address(auctionMap[var38001].field_256)
                        mem[(32 * stor256.length) + 192] = auctionMap[var38001].field_512
                        mem[(32 * stor256.length) + 224] = auctionMap[var38001].field_768
                        mem[(32 * stor256.length) + 256] = address(auctionMap[var38001].field_1024)
                        mem[(32 * stor256.length) + 288] = auctionMap[var38001].field_1280
                        mem[(32 * stor256.length) + 320] = auctionMap[var38001].field_1536
                        mem[(32 * stor256.length) + 352] = auctionMap[var38001].field_1792
                        mem[(32 * stor256.length) + 384] = auctionMap[var38001].field_2048
                        mem[(32 * stor256.length) + 416] = auctionMap[var38001].field_2304
                        mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var38001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _449 + (352 * stor256.length) + -mem[64] + 64
                mem[0] = stor256[idx].field_512
                mem[32] = 255
                mem[64] = mem[64] + 352
                mem[(32 * stor256.length) + 128] = auctionMap[stor256[idx].field_512].field_0
                mem[(32 * stor256.length) + 160] = address(auctionMap[var38001].field_256)
                mem[(32 * stor256.length) + 192] = auctionMap[var38001].field_512
                mem[(32 * stor256.length) + 224] = auctionMap[var38001].field_768
                mem[(32 * stor256.length) + 256] = address(auctionMap[var38001].field_1024)
                mem[(32 * stor256.length) + 288] = auctionMap[var38001].field_1280
                mem[(32 * stor256.length) + 320] = auctionMap[var38001].field_1536
                mem[(32 * stor256.length) + 352] = auctionMap[var38001].field_1792
                mem[(32 * stor256.length) + 384] = auctionMap[var38001].field_2048
                mem[(32 * stor256.length) + 416] = auctionMap[var38001].field_2304
                mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var38001].field_2560))
                s = stor256[idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor256.length) + 480
        mem[(32 * stor256.length) + 128] = 0
        mem[(32 * stor256.length) + 160] = 0
        mem[(32 * stor256.length) + 192] = 0
        mem[(32 * stor256.length) + 224] = 0
        mem[(32 * stor256.length) + 256] = 0
        mem[(32 * stor256.length) + 288] = 0
        mem[(32 * stor256.length) + 320] = 0
        mem[(32 * stor256.length) + 352] = 0
        mem[(32 * stor256.length) + 384] = 0
        mem[(32 * stor256.length) + 416] = 0
        mem[(32 * stor256.length) + 448] = 0
        mem[var11001] = (32 * stor256.length) + 128
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[(32 * stor256.length) + 128] = 0
            mem[(32 * stor256.length) + 160] = 0
            mem[(32 * stor256.length) + 192] = 0
            mem[(32 * stor256.length) + 224] = 0
            mem[(32 * stor256.length) + 256] = 0
            mem[(32 * stor256.length) + 288] = 0
            mem[(32 * stor256.length) + 320] = 0
            mem[(32 * stor256.length) + 352] = 0
            mem[(32 * stor256.length) + 384] = 0
            mem[(32 * stor256.length) + 416] = 0
            mem[(32 * stor256.length) + 448] = 0
            mem[s + 32] = (32 * stor256.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var35002 >= stor256.length:
            _262 = mem[64]
            mem[mem[64]] = 32
            _263 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _263:
                _315 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_315 + 44 len 20]
                mem[t + 64] = mem[_315 + 64]
                mem[t + 96] = mem[_315 + 96]
                mem[t + 128] = mem[_315 + 140 len 20]
                mem[t + 160] = mem[_315 + 160]
                mem[t + 192] = mem[_315 + 192]
                mem[t + 224] = mem[_315 + 224]
                mem[t + 256] = mem[_315 + 256]
                mem[t + 288] = mem[_315 + 288]
                mem[t + 320] = bool(mem[_315 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len _262 + (352 * _263) + -mem[64] + 64
        if var41001 < stor256.length:
            mem[0] = var45001
            mem[32] = 255
            _514 = mem[64]
            mem[64] = mem[64] + 352
            mem[_514] = auctionMap[var45001].field_0
            mem[_514 + 32] = address(auctionMap[var45001].field_256)
            mem[_514 + 64] = auctionMap[var45001].field_512
            mem[_514 + 96] = auctionMap[var45001].field_768
            mem[_514 + 128] = address(auctionMap[var45001].field_1024)
            mem[_514 + 160] = auctionMap[var45001].field_1280
            mem[_514 + 192] = auctionMap[var45001].field_1536
            mem[_514 + 224] = auctionMap[var45001].field_1792
            mem[_514 + 256] = auctionMap[var45001].field_2048
            mem[_514 + 288] = auctionMap[var45001].field_2304
            mem[_514 + 320] = bool(uint8(auctionMap[var45001].field_2560))
            _515 = mem[96]
            s = var45001
            idx = var45008
            while idx < _515:
                mem[(32 * idx) + 128] = _514
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor256.length:
                    _516 = mem[64]
                    mem[mem[64]] = 32
                    _517 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _517:
                        _532 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_532 + 44 len 20]
                        mem[u + 64] = mem[_532 + 64]
                        mem[u + 96] = mem[_532 + 96]
                        mem[u + 128] = mem[_532 + 140 len 20]
                        mem[u + 160] = mem[_532 + 160]
                        mem[u + 192] = mem[_532 + 192]
                        mem[u + 224] = mem[_532 + 224]
                        mem[u + 256] = mem[_532 + 256]
                        mem[u + 288] = mem[_532 + 288]
                        mem[u + 320] = bool(mem[_532 + 320])
                        mem[0] = s
                        mem[32] = 255
                        _514 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_514] = auctionMap[s].field_0
                        mem[_514 + 32] = address(auctionMap[var45001].field_256)
                        mem[_514 + 64] = auctionMap[var45001].field_512
                        mem[_514 + 96] = auctionMap[var45001].field_768
                        mem[_514 + 128] = address(auctionMap[var45001].field_1024)
                        mem[_514 + 160] = auctionMap[var45001].field_1280
                        mem[_514 + 192] = auctionMap[var45001].field_1536
                        mem[_514 + 224] = auctionMap[var45001].field_1792
                        mem[_514 + 256] = auctionMap[var45001].field_2048
                        mem[_514 + 288] = auctionMap[var45001].field_2304
                        mem[_514 + 320] = bool(uint8(auctionMap[var45001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _516 + (352 * _517) + -mem[64] + 64
                mem[0] = stor256[idx].field_512
                mem[32] = 255
                _514 = mem[64]
                mem[64] = mem[64] + 352
                mem[_514] = auctionMap[stor256[idx].field_512].field_0
                mem[_514 + 32] = address(auctionMap[var45001].field_256)
                mem[_514 + 64] = auctionMap[var45001].field_512
                mem[_514 + 96] = auctionMap[var45001].field_768
                mem[_514 + 128] = address(auctionMap[var45001].field_1024)
                mem[_514 + 160] = auctionMap[var45001].field_1280
                mem[_514 + 192] = auctionMap[var45001].field_1536
                mem[_514 + 224] = auctionMap[var45001].field_1792
                mem[_514 + 256] = auctionMap[var45001].field_2048
                mem[_514 + 288] = auctionMap[var45001].field_2304
                mem[_514 + 320] = bool(uint8(auctionMap[var45001].field_2560))
                s = stor256[idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_ce962492(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    if stor258[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor258[arg1].field_0
    mem[64] = (32 * stor258[arg1].field_0) + 128
    if not stor258[arg1].field_0:
        mem[0] = arg1
        mem[32] = 258
        if var31002 >= var31001:
            mem[(32 * stor258[arg1].field_0) + 128] = 32
            mem[(32 * stor258[arg1].field_0) + 160] = stor258[arg1].field_0
            idx = 0
            s = 128
            t = (32 * stor258[arg1].field_0) + 192
            while idx < mem[96]:
                _234 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_234 + 44 len 20]
                mem[t + 64] = mem[_234 + 64]
                mem[t + 96] = mem[_234 + 96]
                mem[t + 128] = mem[_234 + 140 len 20]
                mem[t + 160] = mem[_234 + 160]
                mem[t + 192] = mem[_234 + 192]
                mem[t + 224] = mem[_234 + 224]
                mem[t + 256] = mem[_234 + 256]
                mem[t + 288] = mem[_234 + 288]
                mem[t + 320] = bool(mem[_234 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len (385 * stor258[arg1].field_0) + -mem[64] + 192
        if var37001 < stor[var37002]:
            mem[0] = var41001
            mem[32] = 255
            mem[64] = (32 * stor258[arg1].field_0) + 480
            mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[var41001].field_0
            mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var41001].field_256)
            mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var41001].field_512
            mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var41001].field_768
            mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var41001].field_1024)
            mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var41001].field_1280
            mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var41001].field_1536
            mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var41001].field_1792
            mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var41001].field_2048
            mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var41001].field_2304
            mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var41001].field_2560))
            s = var41001
            idx = var41008
            while idx < stor258[arg1].field_0:
                mem[(32 * idx) + 128] = (32 * stor258[arg1].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 258
                if idx + 1 >= stor258[arg1].field_0:
                    _497 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor258[arg1].field_0
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < stor258[arg1].field_0:
                        _530 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_530 + 44 len 20]
                        mem[u + 64] = mem[_530 + 64]
                        mem[u + 96] = mem[_530 + 96]
                        mem[u + 128] = mem[_530 + 140 len 20]
                        mem[u + 160] = mem[_530 + 160]
                        mem[u + 192] = mem[_530 + 192]
                        mem[u + 224] = mem[_530 + 224]
                        mem[u + 256] = mem[_530 + 256]
                        mem[u + 288] = mem[_530 + 288]
                        mem[u + 320] = bool(mem[_530 + 320])
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                        mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var41001].field_256)
                        mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var41001].field_512
                        mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var41001].field_768
                        mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var41001].field_1024)
                        mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var41001].field_1280
                        mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var41001].field_1536
                        mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var41001].field_1792
                        mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var41001].field_2048
                        mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var41001].field_2304
                        mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var41001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _497 + (352 * stor258[arg1].field_0) + -mem[64] + 64
                if idx + 1 >= stor258[arg1].field_0:
                    revert with 0, 50
                mem[0] = stor258[arg1][idx].field_512
                mem[32] = 255
                mem[64] = mem[64] + 352
                mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[stor258[arg1][idx].field_512].field_0
                mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var41001].field_256)
                mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var41001].field_512
                mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var41001].field_768
                mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var41001].field_1024)
                mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var41001].field_1280
                mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var41001].field_1536
                mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var41001].field_1792
                mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var41001].field_2048
                mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var41001].field_2304
                mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var41001].field_2560))
                s = stor258[arg1][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor258[arg1].field_0) + 480
        mem[(32 * stor258[arg1].field_0) + 128] = 0
        mem[(32 * stor258[arg1].field_0) + 160] = 0
        mem[(32 * stor258[arg1].field_0) + 192] = 0
        mem[(32 * stor258[arg1].field_0) + 224] = 0
        mem[(32 * stor258[arg1].field_0) + 256] = 0
        mem[(32 * stor258[arg1].field_0) + 288] = 0
        mem[(32 * stor258[arg1].field_0) + 320] = 0
        mem[(32 * stor258[arg1].field_0) + 352] = 0
        mem[(32 * stor258[arg1].field_0) + 384] = 0
        mem[(32 * stor258[arg1].field_0) + 416] = 0
        mem[(32 * stor258[arg1].field_0) + 448] = 0
        mem[var14001] = (32 * stor258[arg1].field_0) + 128
        s = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[(32 * stor258[arg1].field_0) + 128] = 0
            mem[(32 * stor258[arg1].field_0) + 160] = 0
            mem[(32 * stor258[arg1].field_0) + 192] = 0
            mem[(32 * stor258[arg1].field_0) + 224] = 0
            mem[(32 * stor258[arg1].field_0) + 256] = 0
            mem[(32 * stor258[arg1].field_0) + 288] = 0
            mem[(32 * stor258[arg1].field_0) + 320] = 0
            mem[(32 * stor258[arg1].field_0) + 352] = 0
            mem[(32 * stor258[arg1].field_0) + 384] = 0
            mem[(32 * stor258[arg1].field_0) + 416] = 0
            mem[(32 * stor258[arg1].field_0) + 448] = 0
            mem[s + 32] = (32 * stor258[arg1].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 258
        if var38002 >= var38001:
            _291 = mem[64]
            mem[mem[64]] = 32
            _292 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _292:
                _348 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_348 + 44 len 20]
                mem[t + 64] = mem[_348 + 64]
                mem[t + 96] = mem[_348 + 96]
                mem[t + 128] = mem[_348 + 140 len 20]
                mem[t + 160] = mem[_348 + 160]
                mem[t + 192] = mem[_348 + 192]
                mem[t + 224] = mem[_348 + 224]
                mem[t + 256] = mem[_348 + 256]
                mem[t + 288] = mem[_348 + 288]
                mem[t + 320] = bool(mem[_348 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len _291 + (352 * _292) + -mem[64] + 64
        if var44001 < stor[var44002]:
            mem[0] = var48001
            mem[32] = 255
            _565 = mem[64]
            mem[64] = mem[64] + 352
            mem[_565] = auctionMap[var48001].field_0
            mem[_565 + 32] = address(auctionMap[var48001].field_256)
            mem[_565 + 64] = auctionMap[var48001].field_512
            mem[_565 + 96] = auctionMap[var48001].field_768
            mem[_565 + 128] = address(auctionMap[var48001].field_1024)
            mem[_565 + 160] = auctionMap[var48001].field_1280
            mem[_565 + 192] = auctionMap[var48001].field_1536
            mem[_565 + 224] = auctionMap[var48001].field_1792
            mem[_565 + 256] = auctionMap[var48001].field_2048
            mem[_565 + 288] = auctionMap[var48001].field_2304
            mem[_565 + 320] = bool(uint8(auctionMap[var48001].field_2560))
            _566 = mem[96]
            s = var48001
            idx = var48008
            while idx < _566:
                mem[(32 * idx) + 128] = _565
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 258
                if idx + 1 >= stor258[arg1].field_0:
                    _569 = mem[64]
                    mem[mem[64]] = 32
                    _570 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 64
                    while idx < _570:
                        _585 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_585 + 44 len 20]
                        mem[u + 64] = mem[_585 + 64]
                        mem[u + 96] = mem[_585 + 96]
                        mem[u + 128] = mem[_585 + 140 len 20]
                        mem[u + 160] = mem[_585 + 160]
                        mem[u + 192] = mem[_585 + 192]
                        mem[u + 224] = mem[_585 + 224]
                        mem[u + 256] = mem[_585 + 256]
                        mem[u + 288] = mem[_585 + 288]
                        mem[u + 320] = bool(mem[_585 + 320])
                        mem[0] = s
                        mem[32] = 255
                        _565 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_565] = auctionMap[s].field_0
                        mem[_565 + 32] = address(auctionMap[var48001].field_256)
                        mem[_565 + 64] = auctionMap[var48001].field_512
                        mem[_565 + 96] = auctionMap[var48001].field_768
                        mem[_565 + 128] = address(auctionMap[var48001].field_1024)
                        mem[_565 + 160] = auctionMap[var48001].field_1280
                        mem[_565 + 192] = auctionMap[var48001].field_1536
                        mem[_565 + 224] = auctionMap[var48001].field_1792
                        mem[_565 + 256] = auctionMap[var48001].field_2048
                        mem[_565 + 288] = auctionMap[var48001].field_2304
                        mem[_565 + 320] = bool(uint8(auctionMap[var48001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _569 + (352 * _570) + -mem[64] + 64
                if idx + 1 >= stor258[arg1].field_0:
                    revert with 0, 50
                mem[0] = stor258[arg1][idx].field_512
                mem[32] = 255
                _565 = mem[64]
                mem[64] = mem[64] + 352
                mem[_565] = auctionMap[stor258[arg1][idx].field_512].field_0
                mem[_565 + 32] = address(auctionMap[var48001].field_256)
                mem[_565 + 64] = auctionMap[var48001].field_512
                mem[_565 + 96] = auctionMap[var48001].field_768
                mem[_565 + 128] = address(auctionMap[var48001].field_1024)
                mem[_565 + 160] = auctionMap[var48001].field_1280
                mem[_565 + 192] = auctionMap[var48001].field_1536
                mem[_565 + 224] = auctionMap[var48001].field_1792
                mem[_565 + 256] = auctionMap[var48001].field_2048
                mem[_565 + 288] = auctionMap[var48001].field_2304
                mem[_565 + 320] = bool(uint8(auctionMap[var48001].field_2560))
                s = stor258[arg1][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_2e612d71(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    if stor260[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor260[arg1].field_0
    if not stor260[arg1].field_0:
        mem[0] = arg1
        mem[32] = 260
        if var32002 < var32001:
            if var38001 < stor[var38002]:
                mem[0] = var42001
                mem[32] = 261
                mem[64] = (32 * stor260[arg1].field_0) + 320
                mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[var42001].field_0
                mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                s = var42001
                idx = var42008
                while idx < stor260[arg1].field_0:
                    mem[(32 * idx) + 128] = (32 * stor260[arg1].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 260
                    if idx + 1 < stor260[arg1].field_0:
                        if idx + 1 >= stor260[arg1].field_0:
                            revert with 0, 50
                        mem[0] = stor260[arg1][idx].field_512
                        mem[32] = 261
                        mem[64] = mem[64] + 192
                        mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[stor260[arg1][idx].field_512].field_0
                        mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                        mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                        mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                        mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                        mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                        s = stor260[arg1][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg3 > test266151307():
                        revert with 0, 65
                    _1054 = mem[64]
                    mem[mem[64]] = arg3
                    mem[64] = mem[64] + (32 * arg3) + 32
                    if not arg3:
                        idx = 0
                        while idx < arg3:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx < mem[96]:
                                if arg2 and arg3 > -1 / arg2:
                                    revert with 0, 17
                                if arg2 * arg3 > !idx:
                                    revert with 0, 17
                                if (arg2 * arg3) + idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[_1054]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1054 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                            else:
                                _1141 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_1141] = 0
                                mem[_1141 + 32] = 0
                                mem[_1141 + 64] = 0
                                mem[_1141 + 96] = 0
                                mem[_1141 + 128] = 0
                                mem[_1141 + 160] = 0
                                if idx >= mem[_1054]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1054 + 32] = _1141
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 192
                            mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                            mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                            mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                            mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                            mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                            mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                            idx = idx + 1
                            continue 
                        _1129 = mem[64]
                        mem[mem[64]] = 32
                        _1130 = mem[_1054]
                        mem[mem[64] + 32] = mem[_1054]
                        idx = 0
                        t = _1054 + 32
                        u = mem[64] + 64
                        while idx < _1130:
                            _1201 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_1201 + 44 len 20]
                            mem[u + 64] = mem[_1201 + 64]
                            mem[u + 96] = mem[_1201 + 108 len 20]
                            mem[u + 128] = mem[_1201 + 128]
                            mem[u + 160] = mem[_1201 + 160]
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 192
                            mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                            mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                            mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                            mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                            mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                            mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                            idx = idx + 1
                            t = t + 32
                            u = u + 192
                            continue 
                        return memory
                          from mem[64]
                           len _1129 + (192 * _1130) + -mem[64] + 64
                    mem[64] = _1054 + (32 * arg3) + 224
                    mem[_1054 + (32 * arg3) + 32] = 0
                    mem[_1054 + (32 * arg3) + 64] = 0
                    mem[_1054 + (32 * arg3) + 96] = 0
                    mem[_1054 + (32 * arg3) + 128] = 0
                    mem[_1054 + (32 * arg3) + 160] = 0
                    mem[_1054 + (32 * arg3) + 192] = 0
                    mem[var48001] = _1054 + (32 * arg3) + 32
                    t = var48001
                    idx = var48002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 192
                        mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                        mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                        mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                        mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                        mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                        mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                        mem[64] = mem[64] + 192
                        mem[_1054 + (32 * arg3) + 32] = 0
                        mem[_1054 + (32 * arg3) + 64] = 0
                        mem[_1054 + (32 * arg3) + 96] = 0
                        mem[_1054 + (32 * arg3) + 128] = 0
                        mem[_1054 + (32 * arg3) + 160] = 0
                        mem[_1054 + (32 * arg3) + 192] = 0
                        mem[t + 32] = _1054 + (32 * arg3) + 32
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < arg3:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx < mem[96]:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1054]:
                                revert with 0, 50
                            mem[(32 * idx) + _1054 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1286 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_1286] = 0
                            mem[_1286 + 32] = 0
                            mem[_1286 + 64] = 0
                            mem[_1286 + 96] = 0
                            mem[_1286 + 128] = 0
                            mem[_1286 + 160] = 0
                            if idx >= mem[_1054]:
                                revert with 0, 50
                            mem[(32 * idx) + _1054 + 32] = _1286
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 192
                        mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                        mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                        mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                        mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                        mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                        mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                        idx = idx + 1
                        continue 
                    _1265 = mem[64]
                    mem[mem[64]] = 32
                    _1267 = mem[_1054]
                    mem[mem[64] + 32] = mem[_1054]
                    idx = 0
                    t = _1054 + 32
                    u = mem[64] + 64
                    while idx < _1267:
                        _1312 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1312 + 44 len 20]
                        mem[u + 64] = mem[_1312 + 64]
                        mem[u + 96] = mem[_1312 + 108 len 20]
                        mem[u + 128] = mem[_1312 + 128]
                        mem[u + 160] = mem[_1312 + 160]
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 192
                        mem[(32 * stor260[arg1].field_0) + 128] = sub_38efe2eb[s].field_0
                        mem[(32 * stor260[arg1].field_0) + 160] = address(sub_38efe2eb[var42001].field_256)
                        mem[(32 * stor260[arg1].field_0) + 192] = sub_38efe2eb[var42001].field_512
                        mem[(32 * stor260[arg1].field_0) + 224] = address(sub_38efe2eb[var42001].field_768)
                        mem[(32 * stor260[arg1].field_0) + 256] = sub_38efe2eb[var42001].field_1024
                        mem[(32 * stor260[arg1].field_0) + 288] = sub_38efe2eb[var42001].field_1280
                        idx = idx + 1
                        t = t + 32
                        u = u + 192
                        continue 
                    return memory
                      from mem[64]
                       len _1265 + (192 * _1267) + -mem[64] + 64
            revert with 0, 50
        if arg3 > test266151307():
            revert with 0, 65
        mem[(32 * stor260[arg1].field_0) + 128] = arg3
        mem[64] = (32 * stor260[arg1].field_0) + (32 * arg3) + 160
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx < mem[96]:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                else:
                    _466 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_466] = 0
                    mem[_466 + 32] = 0
                    mem[_466 + 64] = 0
                    mem[_466 + 96] = 0
                    mem[_466 + 128] = 0
                    mem[_466 + 160] = 0
                    if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = _466
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _446 = mem[64]
            mem[mem[64]] = 32
            _448 = mem[(32 * stor260[arg1].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor260[arg1].field_0) + 128]
            idx = 0
            s = (32 * stor260[arg1].field_0) + 160
            t = mem[64] + 64
            while idx < _448:
                _557 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_557 + 44 len 20]
                mem[t + 64] = mem[_557 + 64]
                mem[t + 96] = mem[_557 + 108 len 20]
                mem[t + 128] = mem[_557 + 128]
                mem[t + 160] = mem[_557 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _446 + (192 * _448) + -mem[64] + 64
        mem[64] = (32 * stor260[arg1].field_0) + (32 * arg3) + 352
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 0
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = 0
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 224] = 0
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 256] = 0
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 288] = 0
        mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 320] = 0
        mem[var28001] = (32 * stor260[arg1].field_0) + (32 * arg3) + 160
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 160] = 0
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 192] = 0
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 224] = 0
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 256] = 0
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 288] = 0
            mem[(32 * stor260[arg1].field_0) + (32 * arg3) + 320] = 0
            mem[s + 32] = (32 * stor260[arg1].field_0) + (32 * arg3) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx < mem[96]:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _728 = mem[64]
                mem[64] = mem[64] + 192
                mem[_728] = 0
                mem[_728 + 32] = 0
                mem[_728 + 64] = 0
                mem[_728 + 96] = 0
                mem[_728 + 128] = 0
                mem[_728 + 160] = 0
                if idx >= mem[(32 * stor260[arg1].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor260[arg1].field_0) + 160] = _728
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _700 = mem[64]
        mem[mem[64]] = 32
        _706 = mem[(32 * stor260[arg1].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor260[arg1].field_0) + 128]
        idx = 0
        s = (32 * stor260[arg1].field_0) + 160
        t = mem[64] + 64
        while idx < _706:
            _827 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_827 + 44 len 20]
            mem[t + 64] = mem[_827 + 64]
            mem[t + 96] = mem[_827 + 108 len 20]
            mem[t + 128] = mem[_827 + 128]
            mem[t + 160] = mem[_827 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _700 + (192 * _706) + -mem[64] + 64
    mem[64] = (32 * stor260[arg1].field_0) + 320
    mem[(32 * stor260[arg1].field_0) + 128] = 0
    mem[(32 * stor260[arg1].field_0) + 160] = 0
    mem[(32 * stor260[arg1].field_0) + 192] = 0
    mem[(32 * stor260[arg1].field_0) + 224] = 0
    mem[(32 * stor260[arg1].field_0) + 256] = 0
    mem[(32 * stor260[arg1].field_0) + 288] = 0
    mem[var15001] = (32 * stor260[arg1].field_0) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * stor260[arg1].field_0) + 128] = 0
        mem[(32 * stor260[arg1].field_0) + 160] = 0
        mem[(32 * stor260[arg1].field_0) + 192] = 0
        mem[(32 * stor260[arg1].field_0) + 224] = 0
        mem[(32 * stor260[arg1].field_0) + 256] = 0
        mem[(32 * stor260[arg1].field_0) + 288] = 0
        mem[s + 32] = (32 * stor260[arg1].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 260
    if var39002 < var39001:
        if var45001 < stor[var45002]:
            mem[0] = var49001
            mem[32] = 261
            _1199 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1199] = sub_38efe2eb[var49001].field_0
            mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
            mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
            mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
            mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
            mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
            _1200 = mem[96]
            s = var49001
            idx = var49008
            while idx < _1200:
                mem[(32 * idx) + 128] = _1199
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 260
                if idx + 1 < stor260[arg1].field_0:
                    if idx + 1 >= stor260[arg1].field_0:
                        revert with 0, 50
                    mem[0] = stor260[arg1][idx].field_512
                    mem[32] = 261
                    _1199 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1199] = sub_38efe2eb[stor260[arg1][idx].field_512].field_0
                    mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                    mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                    mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                    mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                    mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                    s = stor260[arg1][idx].field_256
                    idx = idx + 1
                    continue 
                if arg3 > test266151307():
                    revert with 0, 65
                _1224 = mem[64]
                mem[mem[64]] = arg3
                mem[64] = mem[64] + (32 * arg3) + 32
                if not arg3:
                    idx = 0
                    while idx < arg3:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx < mem[96]:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1224]:
                                revert with 0, 50
                            mem[(32 * idx) + _1224 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1288 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_1288] = 0
                            mem[_1288 + 32] = 0
                            mem[_1288 + 64] = 0
                            mem[_1288 + 96] = 0
                            mem[_1288 + 128] = 0
                            mem[_1288 + 160] = 0
                            if idx >= mem[_1224]:
                                revert with 0, 50
                            mem[(32 * idx) + _1224 + 32] = _1288
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        _1199 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1199] = sub_38efe2eb[s].field_0
                        mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                        mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                        mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                        mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                        mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                        idx = idx + 1
                        continue 
                    _1266 = mem[64]
                    mem[mem[64]] = 32
                    _1268 = mem[_1224]
                    mem[mem[64] + 32] = mem[_1224]
                    idx = 0
                    t = _1224 + 32
                    u = mem[64] + 64
                    while idx < _1268:
                        _1319 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1319 + 44 len 20]
                        mem[u + 64] = mem[_1319 + 64]
                        mem[u + 96] = mem[_1319 + 108 len 20]
                        mem[u + 128] = mem[_1319 + 128]
                        mem[u + 160] = mem[_1319 + 160]
                        mem[0] = s
                        mem[32] = 261
                        _1199 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1199] = sub_38efe2eb[s].field_0
                        mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                        mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                        mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                        mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                        mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                        idx = idx + 1
                        t = t + 32
                        u = u + 192
                        continue 
                    return memory
                      from mem[64]
                       len _1266 + (192 * _1268) + -mem[64] + 64
                mem[64] = _1224 + (32 * arg3) + 224
                mem[_1224 + (32 * arg3) + 32] = 0
                mem[_1224 + (32 * arg3) + 64] = 0
                mem[_1224 + (32 * arg3) + 96] = 0
                mem[_1224 + (32 * arg3) + 128] = 0
                mem[_1224 + (32 * arg3) + 160] = 0
                mem[_1224 + (32 * arg3) + 192] = 0
                mem[var55001] = _1224 + (32 * arg3) + 32
                t = var55001
                idx = var55002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 261
                    _1199 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1199] = sub_38efe2eb[s].field_0
                    mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                    mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                    mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                    mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                    mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                    mem[64] = mem[64] + 192
                    mem[_1224 + (32 * arg3) + 32] = 0
                    mem[_1224 + (32 * arg3) + 64] = 0
                    mem[_1224 + (32 * arg3) + 96] = 0
                    mem[_1224 + (32 * arg3) + 128] = 0
                    mem[_1224 + (32 * arg3) + 160] = 0
                    mem[_1224 + (32 * arg3) + 192] = 0
                    mem[t + 32] = _1224 + (32 * arg3) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < arg3:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx < mem[96]:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[_1224]:
                            revert with 0, 50
                        mem[(32 * idx) + _1224 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    else:
                        _1355 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1355] = 0
                        mem[_1355 + 32] = 0
                        mem[_1355 + 64] = 0
                        mem[_1355 + 96] = 0
                        mem[_1355 + 128] = 0
                        mem[_1355 + 160] = 0
                        if idx >= mem[_1224]:
                            revert with 0, 50
                        mem[(32 * idx) + _1224 + 32] = _1355
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 261
                    _1199 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1199] = sub_38efe2eb[s].field_0
                    mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                    mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                    mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                    mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                    mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                    idx = idx + 1
                    continue 
                _1345 = mem[64]
                mem[mem[64]] = 32
                _1346 = mem[_1224]
                mem[mem[64] + 32] = mem[_1224]
                idx = 0
                t = _1224 + 32
                u = mem[64] + 64
                while idx < _1346:
                    _1360 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1360 + 44 len 20]
                    mem[u + 64] = mem[_1360 + 64]
                    mem[u + 96] = mem[_1360 + 108 len 20]
                    mem[u + 128] = mem[_1360 + 128]
                    mem[u + 160] = mem[_1360 + 160]
                    mem[0] = s
                    mem[32] = 261
                    _1199 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1199] = sub_38efe2eb[s].field_0
                    mem[_1199 + 32] = address(sub_38efe2eb[var49001].field_256)
                    mem[_1199 + 64] = sub_38efe2eb[var49001].field_512
                    mem[_1199 + 96] = address(sub_38efe2eb[var49001].field_768)
                    mem[_1199 + 128] = sub_38efe2eb[var49001].field_1024
                    mem[_1199 + 160] = sub_38efe2eb[var49001].field_1280
                    idx = idx + 1
                    t = t + 32
                    u = u + 192
                    continue 
                return memory
                  from mem[64]
                   len _1345 + (192 * _1346) + -mem[64] + 64
        revert with 0, 50
    if arg3 > test266151307():
        revert with 0, 65
    _570 = mem[64]
    mem[mem[64]] = arg3
    mem[64] = mem[64] + (32 * arg3) + 32
    if not arg3:
        idx = 0
        while idx < arg3:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx < mem[96]:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_570]:
                    revert with 0, 50
                mem[(32 * idx) + _570 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _731 = mem[64]
                mem[64] = mem[64] + 192
                mem[_731] = 0
                mem[_731 + 32] = 0
                mem[_731 + 64] = 0
                mem[_731 + 96] = 0
                mem[_731 + 128] = 0
                mem[_731 + 160] = 0
                if idx >= mem[_570]:
                    revert with 0, 50
                mem[(32 * idx) + _570 + 32] = _731
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _704 = mem[64]
        mem[mem[64]] = 32
        _707 = mem[_570]
        mem[mem[64] + 32] = mem[_570]
        idx = 0
        s = _570 + 32
        t = mem[64] + 64
        while idx < _707:
            _834 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_834 + 44 len 20]
            mem[t + 64] = mem[_834 + 64]
            mem[t + 96] = mem[_834 + 108 len 20]
            mem[t + 128] = mem[_834 + 128]
            mem[t + 160] = mem[_834 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _704 + (192 * _707) + -mem[64] + 64
    mem[64] = _570 + (32 * arg3) + 224
    mem[_570 + (32 * arg3) + 32] = 0
    mem[_570 + (32 * arg3) + 64] = 0
    mem[_570 + (32 * arg3) + 96] = 0
    mem[_570 + (32 * arg3) + 128] = 0
    mem[_570 + (32 * arg3) + 160] = 0
    mem[_570 + (32 * arg3) + 192] = 0
    mem[var35001] = _570 + (32 * arg3) + 32
    s = var35001
    idx = var35002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[_570 + (32 * arg3) + 32] = 0
        mem[_570 + (32 * arg3) + 64] = 0
        mem[_570 + (32 * arg3) + 96] = 0
        mem[_570 + (32 * arg3) + 128] = 0
        mem[_570 + (32 * arg3) + 160] = 0
        mem[_570 + (32 * arg3) + 192] = 0
        mem[s + 32] = _570 + (32 * arg3) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 > !idx:
            revert with 0, 17
        if (arg2 * arg3) + idx < mem[96]:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_570]:
                revert with 0, 50
            mem[(32 * idx) + _570 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
        else:
            _958 = mem[64]
            mem[64] = mem[64] + 192
            mem[_958] = 0
            mem[_958 + 32] = 0
            mem[_958 + 64] = 0
            mem[_958 + 96] = 0
            mem[_958 + 128] = 0
            mem[_958 + 160] = 0
            if idx >= mem[_570]:
                revert with 0, 50
            mem[(32 * idx) + _570 + 32] = _958
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _944 = mem[64]
    mem[mem[64]] = 32
    _948 = mem[_570]
    mem[mem[64] + 32] = mem[_570]
    idx = 0
    s = _570 + 32
    t = mem[64] + 64
    while idx < _948:
        _1039 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1039 + 44 len 20]
        mem[t + 64] = mem[_1039 + 64]
        mem[t + 96] = mem[_1039 + 108 len 20]
        mem[t + 128] = mem[_1039 + 128]
        mem[t + 160] = mem[_1039 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _944 + (192 * _948) + -mem[64] + 64
}

function getAuctions(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor256.length > test266151307():
        revert with 0, 65
    mem[96] = stor256.length
    if not stor256.length:
        if var32002 < stor256.length:
            if var38001 < stor256.length:
                mem[0] = var42001
                mem[32] = 255
                mem[64] = (32 * stor256.length) + 480
                mem[(32 * stor256.length) + 128] = auctionMap[var42001].field_0
                mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                s = var42001
                idx = var42008
                while idx < stor256.length:
                    mem[(32 * idx) + 128] = (32 * stor256.length) + 128
                    if idx == -1:
                        revert with 0, 17
                    if idx + 1 < stor256.length:
                        mem[0] = stor256[idx].field_512
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor256.length) + 128] = auctionMap[stor256[idx].field_512].field_0
                        mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        s = stor256[idx].field_256
                        idx = idx + 1
                        continue 
                    if arg2 > test266151307():
                        revert with 0, 65
                    _1285 = mem[64]
                    mem[mem[64]] = arg2
                    mem[64] = mem[64] + (32 * arg2) + 32
                    if not arg2:
                        idx = 0
                        while idx < arg2:
                            if arg1 and arg2 > -1 / arg1:
                                revert with 0, 17
                            if arg1 * arg2 > !idx:
                                revert with 0, 17
                            if (arg1 * arg2) + idx < mem[96]:
                                if arg1 and arg2 > -1 / arg1:
                                    revert with 0, 17
                                if arg1 * arg2 > !idx:
                                    revert with 0, 17
                                if (arg1 * arg2) + idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[_1285]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1285 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
                            else:
                                _1396 = mem[64]
                                mem[64] = mem[64] + 352
                                mem[_1396] = 0
                                mem[_1396 + 32] = 0
                                mem[_1396 + 64] = 0
                                mem[_1396 + 96] = 0
                                mem[_1396 + 128] = 0
                                mem[_1396 + 160] = 0
                                mem[_1396 + 192] = 0
                                mem[_1396 + 224] = 0
                                mem[_1396 + 256] = 0
                                mem[_1396 + 288] = 0
                                mem[_1396 + 320] = 0
                                if idx >= mem[_1285]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1285 + 32] = _1396
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 255
                            mem[64] = mem[64] + 352
                            mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                            mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                            mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                            mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                            mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                            mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                            mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                            mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                            mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                            mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                            mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                            idx = idx + 1
                            continue 
                        _1380 = mem[64]
                        mem[mem[64]] = 32
                        _1381 = mem[_1285]
                        mem[mem[64] + 32] = mem[_1285]
                        idx = 0
                        t = _1285 + 32
                        u = mem[64] + 64
                        while idx < _1381:
                            _1470 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_1470 + 44 len 20]
                            mem[u + 64] = mem[_1470 + 64]
                            mem[u + 96] = mem[_1470 + 96]
                            mem[u + 128] = mem[_1470 + 140 len 20]
                            mem[u + 160] = mem[_1470 + 160]
                            mem[u + 192] = mem[_1470 + 192]
                            mem[u + 224] = mem[_1470 + 224]
                            mem[u + 256] = mem[_1470 + 256]
                            mem[u + 288] = mem[_1470 + 288]
                            mem[u + 320] = bool(mem[_1470 + 320])
                            mem[0] = s
                            mem[32] = 255
                            mem[64] = mem[64] + 352
                            mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                            mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                            mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                            mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                            mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                            mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                            mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                            mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                            mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                            mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                            mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                            idx = idx + 1
                            t = t + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1380 + (352 * _1381) + -mem[64] + 64
                    mem[64] = _1285 + (32 * arg2) + 384
                    mem[_1285 + (32 * arg2) + 32] = 0
                    mem[_1285 + (32 * arg2) + 64] = 0
                    mem[_1285 + (32 * arg2) + 96] = 0
                    mem[_1285 + (32 * arg2) + 128] = 0
                    mem[_1285 + (32 * arg2) + 160] = 0
                    mem[_1285 + (32 * arg2) + 192] = 0
                    mem[_1285 + (32 * arg2) + 224] = 0
                    mem[_1285 + (32 * arg2) + 256] = 0
                    mem[_1285 + (32 * arg2) + 288] = 0
                    mem[_1285 + (32 * arg2) + 320] = 0
                    mem[_1285 + (32 * arg2) + 352] = 0
                    mem[var48001] = _1285 + (32 * arg2) + 32
                    t = var48001
                    idx = var48002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                        mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        mem[64] = mem[64] + 352
                        mem[_1285 + (32 * arg2) + 32] = 0
                        mem[_1285 + (32 * arg2) + 64] = 0
                        mem[_1285 + (32 * arg2) + 96] = 0
                        mem[_1285 + (32 * arg2) + 128] = 0
                        mem[_1285 + (32 * arg2) + 160] = 0
                        mem[_1285 + (32 * arg2) + 192] = 0
                        mem[_1285 + (32 * arg2) + 224] = 0
                        mem[_1285 + (32 * arg2) + 256] = 0
                        mem[_1285 + (32 * arg2) + 288] = 0
                        mem[_1285 + (32 * arg2) + 320] = 0
                        mem[_1285 + (32 * arg2) + 352] = 0
                        mem[t + 32] = _1285 + (32 * arg2) + 32
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < arg2:
                        if arg1 and arg2 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * arg2 > !idx:
                            revert with 0, 17
                        if (arg1 * arg2) + idx < mem[96]:
                            if arg1 and arg2 > -1 / arg1:
                                revert with 0, 17
                            if arg1 * arg2 > !idx:
                                revert with 0, 17
                            if (arg1 * arg2) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1285]:
                                revert with 0, 50
                            mem[(32 * idx) + _1285 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
                        else:
                            _1583 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1583] = 0
                            mem[_1583 + 32] = 0
                            mem[_1583 + 64] = 0
                            mem[_1583 + 96] = 0
                            mem[_1583 + 128] = 0
                            mem[_1583 + 160] = 0
                            mem[_1583 + 192] = 0
                            mem[_1583 + 224] = 0
                            mem[_1583 + 256] = 0
                            mem[_1583 + 288] = 0
                            mem[_1583 + 320] = 0
                            if idx >= mem[_1285]:
                                revert with 0, 50
                            mem[(32 * idx) + _1285 + 32] = _1583
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                        mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        idx = idx + 1
                        continue 
                    _1552 = mem[64]
                    mem[mem[64]] = 32
                    _1554 = mem[_1285]
                    mem[mem[64] + 32] = mem[_1285]
                    idx = 0
                    t = _1285 + 32
                    u = mem[64] + 64
                    while idx < _1554:
                        _1614 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1614 + 44 len 20]
                        mem[u + 64] = mem[_1614 + 64]
                        mem[u + 96] = mem[_1614 + 96]
                        mem[u + 128] = mem[_1614 + 140 len 20]
                        mem[u + 160] = mem[_1614 + 160]
                        mem[u + 192] = mem[_1614 + 192]
                        mem[u + 224] = mem[_1614 + 224]
                        mem[u + 256] = mem[_1614 + 256]
                        mem[u + 288] = mem[_1614 + 288]
                        mem[u + 320] = bool(mem[_1614 + 320])
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor256.length) + 128] = auctionMap[s].field_0
                        mem[(32 * stor256.length) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor256.length) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor256.length) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor256.length) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor256.length) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor256.length) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor256.length) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor256.length) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor256.length) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor256.length) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _1552 + (352 * _1554) + -mem[64] + 64
            revert with 0, 50
        if arg2 > test266151307():
            revert with 0, 65
        mem[(32 * stor256.length) + 128] = arg2
        mem[64] = (32 * stor256.length) + (32 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx < mem[96]:
                    if arg1 and arg2 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * arg2 > !idx:
                        revert with 0, 17
                    if (arg1 * arg2) + idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * stor256.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor256.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 128]
                else:
                    _556 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_556] = 0
                    mem[_556 + 32] = 0
                    mem[_556 + 64] = 0
                    mem[_556 + 96] = 0
                    mem[_556 + 128] = 0
                    mem[_556 + 160] = 0
                    mem[_556 + 192] = 0
                    mem[_556 + 224] = 0
                    mem[_556 + 256] = 0
                    mem[_556 + 288] = 0
                    mem[_556 + 320] = 0
                    if idx >= mem[(32 * stor256.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor256.length) + 160] = _556
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _531 = mem[64]
            mem[mem[64]] = 32
            _533 = mem[(32 * stor256.length) + 128]
            mem[mem[64] + 32] = mem[(32 * stor256.length) + 128]
            idx = 0
            s = (32 * stor256.length) + 160
            t = mem[64] + 64
            while idx < _533:
                _669 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_669 + 44 len 20]
                mem[t + 64] = mem[_669 + 64]
                mem[t + 96] = mem[_669 + 96]
                mem[t + 128] = mem[_669 + 140 len 20]
                mem[t + 160] = mem[_669 + 160]
                mem[t + 192] = mem[_669 + 192]
                mem[t + 224] = mem[_669 + 224]
                mem[t + 256] = mem[_669 + 256]
                mem[t + 288] = mem[_669 + 288]
                mem[t + 320] = bool(mem[_669 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len _531 + (352 * _533) + -mem[64] + 64
        mem[64] = (32 * stor256.length) + (32 * arg2) + 512
        mem[(32 * stor256.length) + (32 * arg2) + 160] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 192] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 224] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 256] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 288] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 320] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 352] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 384] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 416] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 448] = 0
        mem[(32 * stor256.length) + (32 * arg2) + 480] = 0
        mem[var28001] = (32 * stor256.length) + (32 * arg2) + 160
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[(32 * stor256.length) + (32 * arg2) + 160] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 192] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 224] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 256] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 288] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 320] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 352] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 384] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 416] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 448] = 0
            mem[(32 * stor256.length) + (32 * arg2) + 480] = 0
            mem[s + 32] = (32 * stor256.length) + (32 * arg2) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx < mem[96]:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * stor256.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor256.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 128]
            else:
                _885 = mem[64]
                mem[64] = mem[64] + 352
                mem[_885] = 0
                mem[_885 + 32] = 0
                mem[_885 + 64] = 0
                mem[_885 + 96] = 0
                mem[_885 + 128] = 0
                mem[_885 + 160] = 0
                mem[_885 + 192] = 0
                mem[_885 + 224] = 0
                mem[_885 + 256] = 0
                mem[_885 + 288] = 0
                mem[_885 + 320] = 0
                if idx >= mem[(32 * stor256.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor256.length) + 160] = _885
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _847 = mem[64]
        mem[mem[64]] = 32
        _853 = mem[(32 * stor256.length) + 128]
        mem[mem[64] + 32] = mem[(32 * stor256.length) + 128]
        idx = 0
        s = (32 * stor256.length) + 160
        t = mem[64] + 64
        while idx < _853:
            _1005 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1005 + 44 len 20]
            mem[t + 64] = mem[_1005 + 64]
            mem[t + 96] = mem[_1005 + 96]
            mem[t + 128] = mem[_1005 + 140 len 20]
            mem[t + 160] = mem[_1005 + 160]
            mem[t + 192] = mem[_1005 + 192]
            mem[t + 224] = mem[_1005 + 224]
            mem[t + 256] = mem[_1005 + 256]
            mem[t + 288] = mem[_1005 + 288]
            mem[t + 320] = bool(mem[_1005 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _847 + (352 * _853) + -mem[64] + 64
    mem[64] = (32 * stor256.length) + 480
    mem[(32 * stor256.length) + 128] = 0
    mem[(32 * stor256.length) + 160] = 0
    mem[(32 * stor256.length) + 192] = 0
    mem[(32 * stor256.length) + 224] = 0
    mem[(32 * stor256.length) + 256] = 0
    mem[(32 * stor256.length) + 288] = 0
    mem[(32 * stor256.length) + 320] = 0
    mem[(32 * stor256.length) + 352] = 0
    mem[(32 * stor256.length) + 384] = 0
    mem[(32 * stor256.length) + 416] = 0
    mem[(32 * stor256.length) + 448] = 0
    mem[var15001] = (32 * stor256.length) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[(32 * stor256.length) + 128] = 0
        mem[(32 * stor256.length) + 160] = 0
        mem[(32 * stor256.length) + 192] = 0
        mem[(32 * stor256.length) + 224] = 0
        mem[(32 * stor256.length) + 256] = 0
        mem[(32 * stor256.length) + 288] = 0
        mem[(32 * stor256.length) + 320] = 0
        mem[(32 * stor256.length) + 352] = 0
        mem[(32 * stor256.length) + 384] = 0
        mem[(32 * stor256.length) + 416] = 0
        mem[(32 * stor256.length) + 448] = 0
        mem[s + 32] = (32 * stor256.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if var39002 < stor256.length:
        if var45001 < stor256.length:
            mem[0] = var49001
            mem[32] = 255
            _1468 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1468] = auctionMap[var49001].field_0
            mem[_1468 + 32] = address(auctionMap[var49001].field_256)
            mem[_1468 + 64] = auctionMap[var49001].field_512
            mem[_1468 + 96] = auctionMap[var49001].field_768
            mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
            mem[_1468 + 160] = auctionMap[var49001].field_1280
            mem[_1468 + 192] = auctionMap[var49001].field_1536
            mem[_1468 + 224] = auctionMap[var49001].field_1792
            mem[_1468 + 256] = auctionMap[var49001].field_2048
            mem[_1468 + 288] = auctionMap[var49001].field_2304
            mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
            _1469 = mem[96]
            s = var49001
            idx = var49008
            while idx < _1469:
                mem[(32 * idx) + 128] = _1468
                if idx == -1:
                    revert with 0, 17
                if idx + 1 < stor256.length:
                    mem[0] = stor256[idx].field_512
                    mem[32] = 255
                    _1468 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1468] = auctionMap[stor256[idx].field_512].field_0
                    mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1468 + 64] = auctionMap[var49001].field_512
                    mem[_1468 + 96] = auctionMap[var49001].field_768
                    mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1468 + 160] = auctionMap[var49001].field_1280
                    mem[_1468 + 192] = auctionMap[var49001].field_1536
                    mem[_1468 + 224] = auctionMap[var49001].field_1792
                    mem[_1468 + 256] = auctionMap[var49001].field_2048
                    mem[_1468 + 288] = auctionMap[var49001].field_2304
                    mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    s = stor256[idx].field_256
                    idx = idx + 1
                    continue 
                if arg2 > test266151307():
                    revert with 0, 65
                _1501 = mem[64]
                mem[mem[64]] = arg2
                mem[64] = mem[64] + (32 * arg2) + 32
                if not arg2:
                    idx = 0
                    while idx < arg2:
                        if arg1 and arg2 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * arg2 > !idx:
                            revert with 0, 17
                        if (arg1 * arg2) + idx < mem[96]:
                            if arg1 and arg2 > -1 / arg1:
                                revert with 0, 17
                            if arg1 * arg2 > !idx:
                                revert with 0, 17
                            if (arg1 * arg2) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1501]:
                                revert with 0, 50
                            mem[(32 * idx) + _1501 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
                        else:
                            _1585 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1585] = 0
                            mem[_1585 + 32] = 0
                            mem[_1585 + 64] = 0
                            mem[_1585 + 96] = 0
                            mem[_1585 + 128] = 0
                            mem[_1585 + 160] = 0
                            mem[_1585 + 192] = 0
                            mem[_1585 + 224] = 0
                            mem[_1585 + 256] = 0
                            mem[_1585 + 288] = 0
                            mem[_1585 + 320] = 0
                            if idx >= mem[_1501]:
                                revert with 0, 50
                            mem[(32 * idx) + _1501 + 32] = _1585
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 255
                        _1468 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1468] = auctionMap[s].field_0
                        mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                        mem[_1468 + 64] = auctionMap[var49001].field_512
                        mem[_1468 + 96] = auctionMap[var49001].field_768
                        mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                        mem[_1468 + 160] = auctionMap[var49001].field_1280
                        mem[_1468 + 192] = auctionMap[var49001].field_1536
                        mem[_1468 + 224] = auctionMap[var49001].field_1792
                        mem[_1468 + 256] = auctionMap[var49001].field_2048
                        mem[_1468 + 288] = auctionMap[var49001].field_2304
                        mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                        idx = idx + 1
                        continue 
                    _1553 = mem[64]
                    mem[mem[64]] = 32
                    _1555 = mem[_1501]
                    mem[mem[64] + 32] = mem[_1501]
                    idx = 0
                    t = _1501 + 32
                    u = mem[64] + 64
                    while idx < _1555:
                        _1626 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1626 + 44 len 20]
                        mem[u + 64] = mem[_1626 + 64]
                        mem[u + 96] = mem[_1626 + 96]
                        mem[u + 128] = mem[_1626 + 140 len 20]
                        mem[u + 160] = mem[_1626 + 160]
                        mem[u + 192] = mem[_1626 + 192]
                        mem[u + 224] = mem[_1626 + 224]
                        mem[u + 256] = mem[_1626 + 256]
                        mem[u + 288] = mem[_1626 + 288]
                        mem[u + 320] = bool(mem[_1626 + 320])
                        mem[0] = s
                        mem[32] = 255
                        _1468 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1468] = auctionMap[s].field_0
                        mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                        mem[_1468 + 64] = auctionMap[var49001].field_512
                        mem[_1468 + 96] = auctionMap[var49001].field_768
                        mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                        mem[_1468 + 160] = auctionMap[var49001].field_1280
                        mem[_1468 + 192] = auctionMap[var49001].field_1536
                        mem[_1468 + 224] = auctionMap[var49001].field_1792
                        mem[_1468 + 256] = auctionMap[var49001].field_2048
                        mem[_1468 + 288] = auctionMap[var49001].field_2304
                        mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _1553 + (352 * _1555) + -mem[64] + 64
                mem[64] = _1501 + (32 * arg2) + 384
                mem[_1501 + (32 * arg2) + 32] = 0
                mem[_1501 + (32 * arg2) + 64] = 0
                mem[_1501 + (32 * arg2) + 96] = 0
                mem[_1501 + (32 * arg2) + 128] = 0
                mem[_1501 + (32 * arg2) + 160] = 0
                mem[_1501 + (32 * arg2) + 192] = 0
                mem[_1501 + (32 * arg2) + 224] = 0
                mem[_1501 + (32 * arg2) + 256] = 0
                mem[_1501 + (32 * arg2) + 288] = 0
                mem[_1501 + (32 * arg2) + 320] = 0
                mem[_1501 + (32 * arg2) + 352] = 0
                mem[var55001] = _1501 + (32 * arg2) + 32
                t = var55001
                idx = var55002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 255
                    _1468 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1468] = auctionMap[s].field_0
                    mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1468 + 64] = auctionMap[var49001].field_512
                    mem[_1468 + 96] = auctionMap[var49001].field_768
                    mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1468 + 160] = auctionMap[var49001].field_1280
                    mem[_1468 + 192] = auctionMap[var49001].field_1536
                    mem[_1468 + 224] = auctionMap[var49001].field_1792
                    mem[_1468 + 256] = auctionMap[var49001].field_2048
                    mem[_1468 + 288] = auctionMap[var49001].field_2304
                    mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    mem[64] = mem[64] + 352
                    mem[_1501 + (32 * arg2) + 32] = 0
                    mem[_1501 + (32 * arg2) + 64] = 0
                    mem[_1501 + (32 * arg2) + 96] = 0
                    mem[_1501 + (32 * arg2) + 128] = 0
                    mem[_1501 + (32 * arg2) + 160] = 0
                    mem[_1501 + (32 * arg2) + 192] = 0
                    mem[_1501 + (32 * arg2) + 224] = 0
                    mem[_1501 + (32 * arg2) + 256] = 0
                    mem[_1501 + (32 * arg2) + 288] = 0
                    mem[_1501 + (32 * arg2) + 320] = 0
                    mem[_1501 + (32 * arg2) + 352] = 0
                    mem[t + 32] = _1501 + (32 * arg2) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < arg2:
                    if arg1 and arg2 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * arg2 > !idx:
                        revert with 0, 17
                    if (arg1 * arg2) + idx < mem[96]:
                        if arg1 and arg2 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * arg2 > !idx:
                            revert with 0, 17
                        if (arg1 * arg2) + idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[_1501]:
                            revert with 0, 50
                        mem[(32 * idx) + _1501 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
                    else:
                        _1677 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1677] = 0
                        mem[_1677 + 32] = 0
                        mem[_1677 + 64] = 0
                        mem[_1677 + 96] = 0
                        mem[_1677 + 128] = 0
                        mem[_1677 + 160] = 0
                        mem[_1677 + 192] = 0
                        mem[_1677 + 224] = 0
                        mem[_1677 + 256] = 0
                        mem[_1677 + 288] = 0
                        mem[_1677 + 320] = 0
                        if idx >= mem[_1501]:
                            revert with 0, 50
                        mem[(32 * idx) + _1501 + 32] = _1677
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 255
                    _1468 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1468] = auctionMap[s].field_0
                    mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1468 + 64] = auctionMap[var49001].field_512
                    mem[_1468 + 96] = auctionMap[var49001].field_768
                    mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1468 + 160] = auctionMap[var49001].field_1280
                    mem[_1468 + 192] = auctionMap[var49001].field_1536
                    mem[_1468 + 224] = auctionMap[var49001].field_1792
                    mem[_1468 + 256] = auctionMap[var49001].field_2048
                    mem[_1468 + 288] = auctionMap[var49001].field_2304
                    mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    idx = idx + 1
                    continue 
                _1662 = mem[64]
                mem[mem[64]] = 32
                _1663 = mem[_1501]
                mem[mem[64] + 32] = mem[_1501]
                idx = 0
                t = _1501 + 32
                u = mem[64] + 64
                while idx < _1663:
                    _1682 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1682 + 44 len 20]
                    mem[u + 64] = mem[_1682 + 64]
                    mem[u + 96] = mem[_1682 + 96]
                    mem[u + 128] = mem[_1682 + 140 len 20]
                    mem[u + 160] = mem[_1682 + 160]
                    mem[u + 192] = mem[_1682 + 192]
                    mem[u + 224] = mem[_1682 + 224]
                    mem[u + 256] = mem[_1682 + 256]
                    mem[u + 288] = mem[_1682 + 288]
                    mem[u + 320] = bool(mem[_1682 + 320])
                    mem[0] = s
                    mem[32] = 255
                    _1468 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1468] = auctionMap[s].field_0
                    mem[_1468 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1468 + 64] = auctionMap[var49001].field_512
                    mem[_1468 + 96] = auctionMap[var49001].field_768
                    mem[_1468 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1468 + 160] = auctionMap[var49001].field_1280
                    mem[_1468 + 192] = auctionMap[var49001].field_1536
                    mem[_1468 + 224] = auctionMap[var49001].field_1792
                    mem[_1468 + 256] = auctionMap[var49001].field_2048
                    mem[_1468 + 288] = auctionMap[var49001].field_2304
                    mem[_1468 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    idx = idx + 1
                    t = t + 32
                    u = u + 352
                    continue 
                return memory
                  from mem[64]
                   len _1662 + (352 * _1663) + -mem[64] + 64
        revert with 0, 50
    if arg2 > test266151307():
        revert with 0, 65
    _686 = mem[64]
    mem[mem[64]] = arg2
    mem[64] = mem[64] + (32 * arg2) + 32
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx < mem[96]:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_686]:
                    revert with 0, 50
                mem[(32 * idx) + _686 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
            else:
                _887 = mem[64]
                mem[64] = mem[64] + 352
                mem[_887] = 0
                mem[_887 + 32] = 0
                mem[_887 + 64] = 0
                mem[_887 + 96] = 0
                mem[_887 + 128] = 0
                mem[_887 + 160] = 0
                mem[_887 + 192] = 0
                mem[_887 + 224] = 0
                mem[_887 + 256] = 0
                mem[_887 + 288] = 0
                mem[_887 + 320] = 0
                if idx >= mem[_686]:
                    revert with 0, 50
                mem[(32 * idx) + _686 + 32] = _887
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _851 = mem[64]
        mem[mem[64]] = 32
        _854 = mem[_686]
        mem[mem[64] + 32] = mem[_686]
        idx = 0
        s = _686 + 32
        t = mem[64] + 64
        while idx < _854:
            _1017 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1017 + 44 len 20]
            mem[t + 64] = mem[_1017 + 64]
            mem[t + 96] = mem[_1017 + 96]
            mem[t + 128] = mem[_1017 + 140 len 20]
            mem[t + 160] = mem[_1017 + 160]
            mem[t + 192] = mem[_1017 + 192]
            mem[t + 224] = mem[_1017 + 224]
            mem[t + 256] = mem[_1017 + 256]
            mem[t + 288] = mem[_1017 + 288]
            mem[t + 320] = bool(mem[_1017 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _851 + (352 * _854) + -mem[64] + 64
    mem[64] = _686 + (32 * arg2) + 384
    mem[_686 + (32 * arg2) + 32] = 0
    mem[_686 + (32 * arg2) + 64] = 0
    mem[_686 + (32 * arg2) + 96] = 0
    mem[_686 + (32 * arg2) + 128] = 0
    mem[_686 + (32 * arg2) + 160] = 0
    mem[_686 + (32 * arg2) + 192] = 0
    mem[_686 + (32 * arg2) + 224] = 0
    mem[_686 + (32 * arg2) + 256] = 0
    mem[_686 + (32 * arg2) + 288] = 0
    mem[_686 + (32 * arg2) + 320] = 0
    mem[_686 + (32 * arg2) + 352] = 0
    mem[var35001] = _686 + (32 * arg2) + 32
    s = var35001
    idx = var35002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[_686 + (32 * arg2) + 32] = 0
        mem[_686 + (32 * arg2) + 64] = 0
        mem[_686 + (32 * arg2) + 96] = 0
        mem[_686 + (32 * arg2) + 128] = 0
        mem[_686 + (32 * arg2) + 160] = 0
        mem[_686 + (32 * arg2) + 192] = 0
        mem[_686 + (32 * arg2) + 224] = 0
        mem[_686 + (32 * arg2) + 256] = 0
        mem[_686 + (32 * arg2) + 288] = 0
        mem[_686 + (32 * arg2) + 320] = 0
        mem[_686 + (32 * arg2) + 352] = 0
        mem[s + 32] = _686 + (32 * arg2) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg1 * arg2 > !idx:
            revert with 0, 17
        if (arg1 * arg2) + idx < mem[96]:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_686]:
                revert with 0, 50
            mem[(32 * idx) + _686 + 32] = mem[(32 * (arg1 * arg2) + idx) + 128]
        else:
            _1171 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1171] = 0
            mem[_1171 + 32] = 0
            mem[_1171 + 64] = 0
            mem[_1171 + 96] = 0
            mem[_1171 + 128] = 0
            mem[_1171 + 160] = 0
            mem[_1171 + 192] = 0
            mem[_1171 + 224] = 0
            mem[_1171 + 256] = 0
            mem[_1171 + 288] = 0
            mem[_1171 + 320] = 0
            if idx >= mem[_686]:
                revert with 0, 50
            mem[(32 * idx) + _686 + 32] = _1171
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1153 = mem[64]
    mem[mem[64]] = 32
    _1157 = mem[_686]
    mem[mem[64] + 32] = mem[_686]
    idx = 0
    s = _686 + 32
    t = mem[64] + 64
    while idx < _1157:
        _1269 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1269 + 44 len 20]
        mem[t + 64] = mem[_1269 + 64]
        mem[t + 96] = mem[_1269 + 96]
        mem[t + 128] = mem[_1269 + 140 len 20]
        mem[t + 160] = mem[_1269 + 160]
        mem[t + 192] = mem[_1269 + 192]
        mem[t + 224] = mem[_1269 + 224]
        mem[t + 256] = mem[_1269 + 256]
        mem[t + 288] = mem[_1269 + 288]
        mem[t + 320] = bool(mem[_1269 + 320])
        idx = idx + 1
        s = s + 32
        t = t + 352
        continue 
    return memory
      from mem[64]
       len _1153 + (352 * _1157) + -mem[64] + 64
}

function sub_bfe864ac(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    if stor258[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor258[arg1].field_0
    if not stor258[arg1].field_0:
        mem[0] = arg1
        mem[32] = 258
        if var32002 < var32001:
            if var38001 < stor[var38002]:
                mem[0] = var42001
                mem[32] = 255
                mem[64] = (32 * stor258[arg1].field_0) + 480
                mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[var42001].field_0
                mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                s = var42001
                idx = var42008
                while idx < stor258[arg1].field_0:
                    mem[(32 * idx) + 128] = (32 * stor258[arg1].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 258
                    if idx + 1 < stor258[arg1].field_0:
                        if idx + 1 >= stor258[arg1].field_0:
                            revert with 0, 50
                        mem[0] = stor258[arg1][idx].field_512
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[stor258[arg1][idx].field_512].field_0
                        mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        s = stor258[arg1][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg3 > test266151307():
                        revert with 0, 65
                    _1334 = mem[64]
                    mem[mem[64]] = arg3
                    mem[64] = mem[64] + (32 * arg3) + 32
                    if not arg3:
                        idx = 0
                        while idx < arg3:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx < mem[96]:
                                if arg2 and arg3 > -1 / arg2:
                                    revert with 0, 17
                                if arg2 * arg3 > !idx:
                                    revert with 0, 17
                                if (arg2 * arg3) + idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[_1334]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1334 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                            else:
                                _1446 = mem[64]
                                mem[64] = mem[64] + 352
                                mem[_1446] = 0
                                mem[_1446 + 32] = 0
                                mem[_1446 + 64] = 0
                                mem[_1446 + 96] = 0
                                mem[_1446 + 128] = 0
                                mem[_1446 + 160] = 0
                                mem[_1446 + 192] = 0
                                mem[_1446 + 224] = 0
                                mem[_1446 + 256] = 0
                                mem[_1446 + 288] = 0
                                mem[_1446 + 320] = 0
                                if idx >= mem[_1334]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1334 + 32] = _1446
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 255
                            mem[64] = mem[64] + 352
                            mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                            mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                            mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                            mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                            mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                            mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                            mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                            mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                            mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                            mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                            mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                            idx = idx + 1
                            continue 
                        _1429 = mem[64]
                        mem[mem[64]] = 32
                        _1430 = mem[_1334]
                        mem[mem[64] + 32] = mem[_1334]
                        idx = 0
                        t = _1334 + 32
                        u = mem[64] + 64
                        while idx < _1430:
                            _1521 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_1521 + 44 len 20]
                            mem[u + 64] = mem[_1521 + 64]
                            mem[u + 96] = mem[_1521 + 96]
                            mem[u + 128] = mem[_1521 + 140 len 20]
                            mem[u + 160] = mem[_1521 + 160]
                            mem[u + 192] = mem[_1521 + 192]
                            mem[u + 224] = mem[_1521 + 224]
                            mem[u + 256] = mem[_1521 + 256]
                            mem[u + 288] = mem[_1521 + 288]
                            mem[u + 320] = bool(mem[_1521 + 320])
                            mem[0] = s
                            mem[32] = 255
                            mem[64] = mem[64] + 352
                            mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                            mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                            mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                            mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                            mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                            mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                            mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                            mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                            mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                            mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                            mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                            idx = idx + 1
                            t = t + 32
                            u = u + 352
                            continue 
                        return memory
                          from mem[64]
                           len _1429 + (352 * _1430) + -mem[64] + 64
                    mem[64] = _1334 + (32 * arg3) + 384
                    mem[_1334 + (32 * arg3) + 32] = 0
                    mem[_1334 + (32 * arg3) + 64] = 0
                    mem[_1334 + (32 * arg3) + 96] = 0
                    mem[_1334 + (32 * arg3) + 128] = 0
                    mem[_1334 + (32 * arg3) + 160] = 0
                    mem[_1334 + (32 * arg3) + 192] = 0
                    mem[_1334 + (32 * arg3) + 224] = 0
                    mem[_1334 + (32 * arg3) + 256] = 0
                    mem[_1334 + (32 * arg3) + 288] = 0
                    mem[_1334 + (32 * arg3) + 320] = 0
                    mem[_1334 + (32 * arg3) + 352] = 0
                    mem[var48001] = _1334 + (32 * arg3) + 32
                    t = var48001
                    idx = var48002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                        mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        mem[64] = mem[64] + 352
                        mem[_1334 + (32 * arg3) + 32] = 0
                        mem[_1334 + (32 * arg3) + 64] = 0
                        mem[_1334 + (32 * arg3) + 96] = 0
                        mem[_1334 + (32 * arg3) + 128] = 0
                        mem[_1334 + (32 * arg3) + 160] = 0
                        mem[_1334 + (32 * arg3) + 192] = 0
                        mem[_1334 + (32 * arg3) + 224] = 0
                        mem[_1334 + (32 * arg3) + 256] = 0
                        mem[_1334 + (32 * arg3) + 288] = 0
                        mem[_1334 + (32 * arg3) + 320] = 0
                        mem[_1334 + (32 * arg3) + 352] = 0
                        mem[t + 32] = _1334 + (32 * arg3) + 32
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < arg3:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx < mem[96]:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1334]:
                                revert with 0, 50
                            mem[(32 * idx) + _1334 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1636 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1636] = 0
                            mem[_1636 + 32] = 0
                            mem[_1636 + 64] = 0
                            mem[_1636 + 96] = 0
                            mem[_1636 + 128] = 0
                            mem[_1636 + 160] = 0
                            mem[_1636 + 192] = 0
                            mem[_1636 + 224] = 0
                            mem[_1636 + 256] = 0
                            mem[_1636 + 288] = 0
                            mem[_1636 + 320] = 0
                            if idx >= mem[_1334]:
                                revert with 0, 50
                            mem[(32 * idx) + _1334 + 32] = _1636
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                        mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        idx = idx + 1
                        continue 
                    _1605 = mem[64]
                    mem[mem[64]] = 32
                    _1607 = mem[_1334]
                    mem[mem[64] + 32] = mem[_1334]
                    idx = 0
                    t = _1334 + 32
                    u = mem[64] + 64
                    while idx < _1607:
                        _1667 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1667 + 44 len 20]
                        mem[u + 64] = mem[_1667 + 64]
                        mem[u + 96] = mem[_1667 + 96]
                        mem[u + 128] = mem[_1667 + 140 len 20]
                        mem[u + 160] = mem[_1667 + 160]
                        mem[u + 192] = mem[_1667 + 192]
                        mem[u + 224] = mem[_1667 + 224]
                        mem[u + 256] = mem[_1667 + 256]
                        mem[u + 288] = mem[_1667 + 288]
                        mem[u + 320] = bool(mem[_1667 + 320])
                        mem[0] = s
                        mem[32] = 255
                        mem[64] = mem[64] + 352
                        mem[(32 * stor258[arg1].field_0) + 128] = auctionMap[s].field_0
                        mem[(32 * stor258[arg1].field_0) + 160] = address(auctionMap[var42001].field_256)
                        mem[(32 * stor258[arg1].field_0) + 192] = auctionMap[var42001].field_512
                        mem[(32 * stor258[arg1].field_0) + 224] = auctionMap[var42001].field_768
                        mem[(32 * stor258[arg1].field_0) + 256] = address(auctionMap[var42001].field_1024)
                        mem[(32 * stor258[arg1].field_0) + 288] = auctionMap[var42001].field_1280
                        mem[(32 * stor258[arg1].field_0) + 320] = auctionMap[var42001].field_1536
                        mem[(32 * stor258[arg1].field_0) + 352] = auctionMap[var42001].field_1792
                        mem[(32 * stor258[arg1].field_0) + 384] = auctionMap[var42001].field_2048
                        mem[(32 * stor258[arg1].field_0) + 416] = auctionMap[var42001].field_2304
                        mem[(32 * stor258[arg1].field_0) + 448] = bool(uint8(auctionMap[var42001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _1605 + (352 * _1607) + -mem[64] + 64
            revert with 0, 50
        if arg3 > test266151307():
            revert with 0, 65
        mem[(32 * stor258[arg1].field_0) + 128] = arg3
        mem[64] = (32 * stor258[arg1].field_0) + (32 * arg3) + 160
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx < mem[96]:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * stor258[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor258[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                else:
                    _581 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_581] = 0
                    mem[_581 + 32] = 0
                    mem[_581 + 64] = 0
                    mem[_581 + 96] = 0
                    mem[_581 + 128] = 0
                    mem[_581 + 160] = 0
                    mem[_581 + 192] = 0
                    mem[_581 + 224] = 0
                    mem[_581 + 256] = 0
                    mem[_581 + 288] = 0
                    mem[_581 + 320] = 0
                    if idx >= mem[(32 * stor258[arg1].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor258[arg1].field_0) + 160] = _581
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _556 = mem[64]
            mem[mem[64]] = 32
            _558 = mem[(32 * stor258[arg1].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor258[arg1].field_0) + 128]
            idx = 0
            s = (32 * stor258[arg1].field_0) + 160
            t = mem[64] + 64
            while idx < _558:
                _697 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_697 + 44 len 20]
                mem[t + 64] = mem[_697 + 64]
                mem[t + 96] = mem[_697 + 96]
                mem[t + 128] = mem[_697 + 140 len 20]
                mem[t + 160] = mem[_697 + 160]
                mem[t + 192] = mem[_697 + 192]
                mem[t + 224] = mem[_697 + 224]
                mem[t + 256] = mem[_697 + 256]
                mem[t + 288] = mem[_697 + 288]
                mem[t + 320] = bool(mem[_697 + 320])
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len _556 + (352 * _558) + -mem[64] + 64
        mem[64] = (32 * stor258[arg1].field_0) + (32 * arg3) + 512
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 160] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 192] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 224] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 256] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 288] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 320] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 352] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 384] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 416] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 448] = 0
        mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 480] = 0
        mem[var28001] = (32 * stor258[arg1].field_0) + (32 * arg3) + 160
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 160] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 192] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 224] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 256] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 288] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 320] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 352] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 384] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 416] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 448] = 0
            mem[(32 * stor258[arg1].field_0) + (32 * arg3) + 480] = 0
            mem[s + 32] = (32 * stor258[arg1].field_0) + (32 * arg3) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx < mem[96]:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * stor258[arg1].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor258[arg1].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _918 = mem[64]
                mem[64] = mem[64] + 352
                mem[_918] = 0
                mem[_918 + 32] = 0
                mem[_918 + 64] = 0
                mem[_918 + 96] = 0
                mem[_918 + 128] = 0
                mem[_918 + 160] = 0
                mem[_918 + 192] = 0
                mem[_918 + 224] = 0
                mem[_918 + 256] = 0
                mem[_918 + 288] = 0
                mem[_918 + 320] = 0
                if idx >= mem[(32 * stor258[arg1].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor258[arg1].field_0) + 160] = _918
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _880 = mem[64]
        mem[mem[64]] = 32
        _886 = mem[(32 * stor258[arg1].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor258[arg1].field_0) + 128]
        idx = 0
        s = (32 * stor258[arg1].field_0) + 160
        t = mem[64] + 64
        while idx < _886:
            _1042 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1042 + 44 len 20]
            mem[t + 64] = mem[_1042 + 64]
            mem[t + 96] = mem[_1042 + 96]
            mem[t + 128] = mem[_1042 + 140 len 20]
            mem[t + 160] = mem[_1042 + 160]
            mem[t + 192] = mem[_1042 + 192]
            mem[t + 224] = mem[_1042 + 224]
            mem[t + 256] = mem[_1042 + 256]
            mem[t + 288] = mem[_1042 + 288]
            mem[t + 320] = bool(mem[_1042 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _880 + (352 * _886) + -mem[64] + 64
    mem[64] = (32 * stor258[arg1].field_0) + 480
    mem[(32 * stor258[arg1].field_0) + 128] = 0
    mem[(32 * stor258[arg1].field_0) + 160] = 0
    mem[(32 * stor258[arg1].field_0) + 192] = 0
    mem[(32 * stor258[arg1].field_0) + 224] = 0
    mem[(32 * stor258[arg1].field_0) + 256] = 0
    mem[(32 * stor258[arg1].field_0) + 288] = 0
    mem[(32 * stor258[arg1].field_0) + 320] = 0
    mem[(32 * stor258[arg1].field_0) + 352] = 0
    mem[(32 * stor258[arg1].field_0) + 384] = 0
    mem[(32 * stor258[arg1].field_0) + 416] = 0
    mem[(32 * stor258[arg1].field_0) + 448] = 0
    mem[var15001] = (32 * stor258[arg1].field_0) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[(32 * stor258[arg1].field_0) + 128] = 0
        mem[(32 * stor258[arg1].field_0) + 160] = 0
        mem[(32 * stor258[arg1].field_0) + 192] = 0
        mem[(32 * stor258[arg1].field_0) + 224] = 0
        mem[(32 * stor258[arg1].field_0) + 256] = 0
        mem[(32 * stor258[arg1].field_0) + 288] = 0
        mem[(32 * stor258[arg1].field_0) + 320] = 0
        mem[(32 * stor258[arg1].field_0) + 352] = 0
        mem[(32 * stor258[arg1].field_0) + 384] = 0
        mem[(32 * stor258[arg1].field_0) + 416] = 0
        mem[(32 * stor258[arg1].field_0) + 448] = 0
        mem[s + 32] = (32 * stor258[arg1].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 258
    if var39002 < var39001:
        if var45001 < stor[var45002]:
            mem[0] = var49001
            mem[32] = 255
            _1519 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1519] = auctionMap[var49001].field_0
            mem[_1519 + 32] = address(auctionMap[var49001].field_256)
            mem[_1519 + 64] = auctionMap[var49001].field_512
            mem[_1519 + 96] = auctionMap[var49001].field_768
            mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
            mem[_1519 + 160] = auctionMap[var49001].field_1280
            mem[_1519 + 192] = auctionMap[var49001].field_1536
            mem[_1519 + 224] = auctionMap[var49001].field_1792
            mem[_1519 + 256] = auctionMap[var49001].field_2048
            mem[_1519 + 288] = auctionMap[var49001].field_2304
            mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
            _1520 = mem[96]
            s = var49001
            idx = var49008
            while idx < _1520:
                mem[(32 * idx) + 128] = _1519
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 258
                if idx + 1 < stor258[arg1].field_0:
                    if idx + 1 >= stor258[arg1].field_0:
                        revert with 0, 50
                    mem[0] = stor258[arg1][idx].field_512
                    mem[32] = 255
                    _1519 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1519] = auctionMap[stor258[arg1][idx].field_512].field_0
                    mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1519 + 64] = auctionMap[var49001].field_512
                    mem[_1519 + 96] = auctionMap[var49001].field_768
                    mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1519 + 160] = auctionMap[var49001].field_1280
                    mem[_1519 + 192] = auctionMap[var49001].field_1536
                    mem[_1519 + 224] = auctionMap[var49001].field_1792
                    mem[_1519 + 256] = auctionMap[var49001].field_2048
                    mem[_1519 + 288] = auctionMap[var49001].field_2304
                    mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    s = stor258[arg1][idx].field_256
                    idx = idx + 1
                    continue 
                if arg3 > test266151307():
                    revert with 0, 65
                _1554 = mem[64]
                mem[mem[64]] = arg3
                mem[64] = mem[64] + (32 * arg3) + 32
                if not arg3:
                    idx = 0
                    while idx < arg3:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx < mem[96]:
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 > !idx:
                                revert with 0, 17
                            if (arg2 * arg3) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1554]:
                                revert with 0, 50
                            mem[(32 * idx) + _1554 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1638 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1638] = 0
                            mem[_1638 + 32] = 0
                            mem[_1638 + 64] = 0
                            mem[_1638 + 96] = 0
                            mem[_1638 + 128] = 0
                            mem[_1638 + 160] = 0
                            mem[_1638 + 192] = 0
                            mem[_1638 + 224] = 0
                            mem[_1638 + 256] = 0
                            mem[_1638 + 288] = 0
                            mem[_1638 + 320] = 0
                            if idx >= mem[_1554]:
                                revert with 0, 50
                            mem[(32 * idx) + _1554 + 32] = _1638
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 255
                        _1519 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1519] = auctionMap[s].field_0
                        mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                        mem[_1519 + 64] = auctionMap[var49001].field_512
                        mem[_1519 + 96] = auctionMap[var49001].field_768
                        mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                        mem[_1519 + 160] = auctionMap[var49001].field_1280
                        mem[_1519 + 192] = auctionMap[var49001].field_1536
                        mem[_1519 + 224] = auctionMap[var49001].field_1792
                        mem[_1519 + 256] = auctionMap[var49001].field_2048
                        mem[_1519 + 288] = auctionMap[var49001].field_2304
                        mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                        idx = idx + 1
                        continue 
                    _1606 = mem[64]
                    mem[mem[64]] = 32
                    _1608 = mem[_1554]
                    mem[mem[64] + 32] = mem[_1554]
                    idx = 0
                    t = _1554 + 32
                    u = mem[64] + 64
                    while idx < _1608:
                        _1679 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_1679 + 44 len 20]
                        mem[u + 64] = mem[_1679 + 64]
                        mem[u + 96] = mem[_1679 + 96]
                        mem[u + 128] = mem[_1679 + 140 len 20]
                        mem[u + 160] = mem[_1679 + 160]
                        mem[u + 192] = mem[_1679 + 192]
                        mem[u + 224] = mem[_1679 + 224]
                        mem[u + 256] = mem[_1679 + 256]
                        mem[u + 288] = mem[_1679 + 288]
                        mem[u + 320] = bool(mem[_1679 + 320])
                        mem[0] = s
                        mem[32] = 255
                        _1519 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1519] = auctionMap[s].field_0
                        mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                        mem[_1519 + 64] = auctionMap[var49001].field_512
                        mem[_1519 + 96] = auctionMap[var49001].field_768
                        mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                        mem[_1519 + 160] = auctionMap[var49001].field_1280
                        mem[_1519 + 192] = auctionMap[var49001].field_1536
                        mem[_1519 + 224] = auctionMap[var49001].field_1792
                        mem[_1519 + 256] = auctionMap[var49001].field_2048
                        mem[_1519 + 288] = auctionMap[var49001].field_2304
                        mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                        idx = idx + 1
                        t = t + 32
                        u = u + 352
                        continue 
                    return memory
                      from mem[64]
                       len _1606 + (352 * _1608) + -mem[64] + 64
                mem[64] = _1554 + (32 * arg3) + 384
                mem[_1554 + (32 * arg3) + 32] = 0
                mem[_1554 + (32 * arg3) + 64] = 0
                mem[_1554 + (32 * arg3) + 96] = 0
                mem[_1554 + (32 * arg3) + 128] = 0
                mem[_1554 + (32 * arg3) + 160] = 0
                mem[_1554 + (32 * arg3) + 192] = 0
                mem[_1554 + (32 * arg3) + 224] = 0
                mem[_1554 + (32 * arg3) + 256] = 0
                mem[_1554 + (32 * arg3) + 288] = 0
                mem[_1554 + (32 * arg3) + 320] = 0
                mem[_1554 + (32 * arg3) + 352] = 0
                mem[var55001] = _1554 + (32 * arg3) + 32
                t = var55001
                idx = var55002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 255
                    _1519 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1519] = auctionMap[s].field_0
                    mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1519 + 64] = auctionMap[var49001].field_512
                    mem[_1519 + 96] = auctionMap[var49001].field_768
                    mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1519 + 160] = auctionMap[var49001].field_1280
                    mem[_1519 + 192] = auctionMap[var49001].field_1536
                    mem[_1519 + 224] = auctionMap[var49001].field_1792
                    mem[_1519 + 256] = auctionMap[var49001].field_2048
                    mem[_1519 + 288] = auctionMap[var49001].field_2304
                    mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    mem[64] = mem[64] + 352
                    mem[_1554 + (32 * arg3) + 32] = 0
                    mem[_1554 + (32 * arg3) + 64] = 0
                    mem[_1554 + (32 * arg3) + 96] = 0
                    mem[_1554 + (32 * arg3) + 128] = 0
                    mem[_1554 + (32 * arg3) + 160] = 0
                    mem[_1554 + (32 * arg3) + 192] = 0
                    mem[_1554 + (32 * arg3) + 224] = 0
                    mem[_1554 + (32 * arg3) + 256] = 0
                    mem[_1554 + (32 * arg3) + 288] = 0
                    mem[_1554 + (32 * arg3) + 320] = 0
                    mem[_1554 + (32 * arg3) + 352] = 0
                    mem[t + 32] = _1554 + (32 * arg3) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < arg3:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 > !idx:
                        revert with 0, 17
                    if (arg2 * arg3) + idx < mem[96]:
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 > !idx:
                            revert with 0, 17
                        if (arg2 * arg3) + idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[_1554]:
                            revert with 0, 50
                        mem[(32 * idx) + _1554 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    else:
                        _1730 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1730] = 0
                        mem[_1730 + 32] = 0
                        mem[_1730 + 64] = 0
                        mem[_1730 + 96] = 0
                        mem[_1730 + 128] = 0
                        mem[_1730 + 160] = 0
                        mem[_1730 + 192] = 0
                        mem[_1730 + 224] = 0
                        mem[_1730 + 256] = 0
                        mem[_1730 + 288] = 0
                        mem[_1730 + 320] = 0
                        if idx >= mem[_1554]:
                            revert with 0, 50
                        mem[(32 * idx) + _1554 + 32] = _1730
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 255
                    _1519 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1519] = auctionMap[s].field_0
                    mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1519 + 64] = auctionMap[var49001].field_512
                    mem[_1519 + 96] = auctionMap[var49001].field_768
                    mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1519 + 160] = auctionMap[var49001].field_1280
                    mem[_1519 + 192] = auctionMap[var49001].field_1536
                    mem[_1519 + 224] = auctionMap[var49001].field_1792
                    mem[_1519 + 256] = auctionMap[var49001].field_2048
                    mem[_1519 + 288] = auctionMap[var49001].field_2304
                    mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    idx = idx + 1
                    continue 
                _1715 = mem[64]
                mem[mem[64]] = 32
                _1716 = mem[_1554]
                mem[mem[64] + 32] = mem[_1554]
                idx = 0
                t = _1554 + 32
                u = mem[64] + 64
                while idx < _1716:
                    _1735 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1735 + 44 len 20]
                    mem[u + 64] = mem[_1735 + 64]
                    mem[u + 96] = mem[_1735 + 96]
                    mem[u + 128] = mem[_1735 + 140 len 20]
                    mem[u + 160] = mem[_1735 + 160]
                    mem[u + 192] = mem[_1735 + 192]
                    mem[u + 224] = mem[_1735 + 224]
                    mem[u + 256] = mem[_1735 + 256]
                    mem[u + 288] = mem[_1735 + 288]
                    mem[u + 320] = bool(mem[_1735 + 320])
                    mem[0] = s
                    mem[32] = 255
                    _1519 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1519] = auctionMap[s].field_0
                    mem[_1519 + 32] = address(auctionMap[var49001].field_256)
                    mem[_1519 + 64] = auctionMap[var49001].field_512
                    mem[_1519 + 96] = auctionMap[var49001].field_768
                    mem[_1519 + 128] = address(auctionMap[var49001].field_1024)
                    mem[_1519 + 160] = auctionMap[var49001].field_1280
                    mem[_1519 + 192] = auctionMap[var49001].field_1536
                    mem[_1519 + 224] = auctionMap[var49001].field_1792
                    mem[_1519 + 256] = auctionMap[var49001].field_2048
                    mem[_1519 + 288] = auctionMap[var49001].field_2304
                    mem[_1519 + 320] = bool(uint8(auctionMap[var49001].field_2560))
                    idx = idx + 1
                    t = t + 32
                    u = u + 352
                    continue 
                return memory
                  from mem[64]
                   len _1715 + (352 * _1716) + -mem[64] + 64
        revert with 0, 50
    if arg3 > test266151307():
        revert with 0, 65
    _715 = mem[64]
    mem[mem[64]] = arg3
    mem[64] = mem[64] + (32 * arg3) + 32
    if not arg3:
        idx = 0
        while idx < arg3:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx < mem[96]:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 > !idx:
                    revert with 0, 17
                if (arg2 * arg3) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_715]:
                    revert with 0, 50
                mem[(32 * idx) + _715 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _921 = mem[64]
                mem[64] = mem[64] + 352
                mem[_921] = 0
                mem[_921 + 32] = 0
                mem[_921 + 64] = 0
                mem[_921 + 96] = 0
                mem[_921 + 128] = 0
                mem[_921 + 160] = 0
                mem[_921 + 192] = 0
                mem[_921 + 224] = 0
                mem[_921 + 256] = 0
                mem[_921 + 288] = 0
                mem[_921 + 320] = 0
                if idx >= mem[_715]:
                    revert with 0, 50
                mem[(32 * idx) + _715 + 32] = _921
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _884 = mem[64]
        mem[mem[64]] = 32
        _887 = mem[_715]
        mem[mem[64] + 32] = mem[_715]
        idx = 0
        s = _715 + 32
        t = mem[64] + 64
        while idx < _887:
            _1054 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1054 + 44 len 20]
            mem[t + 64] = mem[_1054 + 64]
            mem[t + 96] = mem[_1054 + 96]
            mem[t + 128] = mem[_1054 + 140 len 20]
            mem[t + 160] = mem[_1054 + 160]
            mem[t + 192] = mem[_1054 + 192]
            mem[t + 224] = mem[_1054 + 224]
            mem[t + 256] = mem[_1054 + 256]
            mem[t + 288] = mem[_1054 + 288]
            mem[t + 320] = bool(mem[_1054 + 320])
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _884 + (352 * _887) + -mem[64] + 64
    mem[64] = _715 + (32 * arg3) + 384
    mem[_715 + (32 * arg3) + 32] = 0
    mem[_715 + (32 * arg3) + 64] = 0
    mem[_715 + (32 * arg3) + 96] = 0
    mem[_715 + (32 * arg3) + 128] = 0
    mem[_715 + (32 * arg3) + 160] = 0
    mem[_715 + (32 * arg3) + 192] = 0
    mem[_715 + (32 * arg3) + 224] = 0
    mem[_715 + (32 * arg3) + 256] = 0
    mem[_715 + (32 * arg3) + 288] = 0
    mem[_715 + (32 * arg3) + 320] = 0
    mem[_715 + (32 * arg3) + 352] = 0
    mem[var35001] = _715 + (32 * arg3) + 32
    s = var35001
    idx = var35002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[_715 + (32 * arg3) + 32] = 0
        mem[_715 + (32 * arg3) + 64] = 0
        mem[_715 + (32 * arg3) + 96] = 0
        mem[_715 + (32 * arg3) + 128] = 0
        mem[_715 + (32 * arg3) + 160] = 0
        mem[_715 + (32 * arg3) + 192] = 0
        mem[_715 + (32 * arg3) + 224] = 0
        mem[_715 + (32 * arg3) + 256] = 0
        mem[_715 + (32 * arg3) + 288] = 0
        mem[_715 + (32 * arg3) + 320] = 0
        mem[_715 + (32 * arg3) + 352] = 0
        mem[s + 32] = _715 + (32 * arg3) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 > !idx:
            revert with 0, 17
        if (arg2 * arg3) + idx < mem[96]:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 > !idx:
                revert with 0, 17
            if (arg2 * arg3) + idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_715]:
                revert with 0, 50
            mem[(32 * idx) + _715 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
        else:
            _1213 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1213] = 0
            mem[_1213 + 32] = 0
            mem[_1213 + 64] = 0
            mem[_1213 + 96] = 0
            mem[_1213 + 128] = 0
            mem[_1213 + 160] = 0
            mem[_1213 + 192] = 0
            mem[_1213 + 224] = 0
            mem[_1213 + 256] = 0
            mem[_1213 + 288] = 0
            mem[_1213 + 320] = 0
            if idx >= mem[_715]:
                revert with 0, 50
            mem[(32 * idx) + _715 + 32] = _1213
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1194 = mem[64]
    mem[mem[64]] = 32
    _1198 = mem[_715]
    mem[mem[64] + 32] = mem[_715]
    idx = 0
    s = _715 + 32
    t = mem[64] + 64
    while idx < _1198:
        _1314 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1314 + 44 len 20]
        mem[t + 64] = mem[_1314 + 64]
        mem[t + 96] = mem[_1314 + 96]
        mem[t + 128] = mem[_1314 + 140 len 20]
        mem[t + 160] = mem[_1314 + 160]
        mem[t + 192] = mem[_1314 + 192]
        mem[t + 224] = mem[_1314 + 224]
        mem[t + 256] = mem[_1314 + 256]
        mem[t + 288] = mem[_1314 + 288]
        mem[t + 320] = bool(mem[_1314 + 320])
        idx = idx + 1
        s = s + 32
        t = t + 352
        continue 
    return memory
      from mem[64]
       len _1194 + (352 * _1198) + -mem[64] + 64
}



}
