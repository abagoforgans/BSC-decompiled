contract main {




// =====================  Runtime code  =====================


#
#  - sub_ce158e76(?)
#  - sub_d49f1028(?)
#  - cancelOffer(uint256 arg1)
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
array of struct stor255;
array of struct stor256;
array of struct stor257;
array of struct stor258;
mapping of uint256 sub_c3771e63;
mapping of struct sub_4056639c;
mapping of struct sub_8dd3c719;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_4056639c(?) payable {
    require calldata.size - 4 >= 32
    return sub_4056639c[arg1].field_0, 
           address(sub_4056639c[arg1].field_256),
           sub_4056639c[arg1].field_512,
           address(sub_4056639c[arg1].field_768),
           sub_4056639c[arg1].field_1024,
           sub_4056639c[arg1].field_1280,
           sub_4056639c[arg1].field_1536,
           sub_4056639c[arg1].field_1792,
           bool(uint8(sub_4056639c[arg1].field_2048))
}

function sub_8dd3c719(?) payable {
    require calldata.size - 4 >= 32
    return sub_8dd3c719[arg1].field_0, 
           address(sub_8dd3c719[arg1].field_256),
           sub_8dd3c719[arg1].field_512,
           address(sub_8dd3c719[arg1].field_768),
           sub_8dd3c719[arg1].field_1024,
           sub_8dd3c719[arg1].field_1280,
           sub_8dd3c719[arg1].field_1536,
           sub_8dd3c719[arg1].field_1792,
           bool(uint8(sub_8dd3c719[arg1].field_2048))
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_c2d873a8(?) payable {
    return sub_c2d873a8Address
}

function sub_c3771e63(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_c3771e63[arg1][arg2]
}

function feeManager() payable {
    return feeManagerAddress
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

function sub_ec9fcc68(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require ext_code.size(sub_c2d873a8Address)
    staticcall sub_c2d873a8Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'need a token'
    if arg6 <= arg5:
        revert with 0, 'invalid time'
    if not arg3:
        revert with 0, 'invalid price'
    if not address(arg2):
        revert with 0, 'invalid accepted token'
    sub_4056639c[stor253].field_0 = stor253
    address(sub_4056639c[stor253].field_256) = msg.sender
    sub_4056639c[stor253].field_512 = arg1
    address(sub_4056639c[stor253].field_768) = address(arg2)
    sub_4056639c[stor253].field_1024 = arg3
    sub_4056639c[stor253].field_1280 = arg4
    sub_4056639c[stor253].field_1536 = arg5
    sub_4056639c[stor253].field_1792 = arg6
    uint8(sub_4056639c[stor253].field_2048) = 1
    if not stor255[arg1][address(arg2)][1][stor253].field_0:
        stor255[arg1][address(arg2)].field_0++
        stor255[arg1][address(arg2)][stor255[arg1][address(arg2)].field_0].field_0 = stor253
        stor255[arg1][address(arg2)][1][stor253].field_0 = stor255[arg1][address(arg2)].field_0
    if not stor257[msg.sender][1][stor253].field_0:
        stor257[msg.sender].field_0++
        stor257[msg.sender][stor257[msg.sender].field_0].field_0 = stor253
        stor257[msg.sender][1][stor253].field_0 = stor257[msg.sender].field_0
    stor253++
    require ext_code.size(sub_c2d873a8Address)
    call sub_c2d873a8Address.0xf242432a with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9851d936: address(arg2), arg3, arg4, arg5, arg6, stor253, msg.sender, arg1
    return stor253
}

function cancelListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(sub_4056639c[arg1].field_256) != msg.sender:
        revert with 0, 'no permission'
    if not uint8(sub_4056639c[arg1].field_2048):
        revert with 0, 'not active'
    uint8(sub_4056639c[arg1].field_2048) = 0
    if stor257[msg.sender][1][arg1].field_0:
        if stor257[msg.sender][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor257[msg.sender].field_0 < 1:
            revert with 0, 17
        if stor257[msg.sender].field_0 - 1 != stor257[msg.sender][1][arg1].field_0 - 1:
            if stor257[msg.sender].field_0 - 1 >= stor257[msg.sender].field_0:
                revert with 0, 50
            if stor257[msg.sender][1][arg1].field_0 - 1 >= stor257[msg.sender].field_0:
                revert with 0, 50
            stor257[msg.sender][stor257[msg.sender][1][arg1].field_0].field_0 = stor257[msg.sender][stor257[msg.sender].field_0].field_0
            stor257[msg.sender][1][stor257[msg.sender][stor257[msg.sender].field_0].field_0].field_0 = stor257[msg.sender][1][arg1].field_0
        if not stor257[msg.sender].field_0:
            revert with 0, 49
        stor257[msg.sender][stor257[msg.sender].field_0].field_0 = 0
        stor257[msg.sender].field_0--
        stor257[msg.sender][1][arg1].field_0 = 0
    if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0:
        if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0 < 1:
            revert with 0, 17
        if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0 - 1 != stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0 - 1:
            if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0 - 1 >= stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0:
                revert with 0, 50
            if stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0 - 1 >= stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0:
                revert with 0, 50
            stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0].field_0 = stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0].field_0
            stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0].field_0].field_0 = stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0
        if not stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0:
            revert with 0, 49
        stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0].field_0 = 0
        stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)].field_0--
        stor255[stor260[arg1].field_512][address(stor260[arg1].field_768)][1][arg1].field_0 = 0
    require ext_code.size(sub_c2d873a8Address)
    call sub_c2d873a8Address.0xf242432a with:
         gas gas_remaining wei
        args 0, 0, msg.sender, sub_4056639c[arg1].field_512, sub_4056639c[arg1].field_1280, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x826593aa: arg1, msg.sender
}

function sub_c8e5fe91(?) payable {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    mem[100] = arg1
    require ext_code.size(sub_c2d873a8Address)
    staticcall sub_c2d873a8Address.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not exitst'
    if arg6 <= arg5:
        revert with 0, 'invalid time'
    if not arg3:
        revert with 0, 'invalid price'
    if not address(arg2):
        revert with 0, 'invalid accepted token'
    mem[ceil32(return_data.size) + 96] = stor254
    mem[ceil32(return_data.size) + 128] = msg.sender
    mem[ceil32(return_data.size) + 160] = arg1
    mem[ceil32(return_data.size) + 192] = address(arg2)
    mem[ceil32(return_data.size) + 224] = arg3
    mem[ceil32(return_data.size) + 256] = arg4
    mem[ceil32(return_data.size) + 288] = arg5
    mem[ceil32(return_data.size) + 320] = arg6
    mem[ceil32(return_data.size) + 352] = 1
    sub_8dd3c719[stor254].field_0 = stor254
    address(sub_8dd3c719[stor254].field_256) = msg.sender
    sub_8dd3c719[stor254].field_512 = arg1
    address(sub_8dd3c719[stor254].field_768) = address(arg2)
    sub_8dd3c719[stor254].field_1024 = arg3
    sub_8dd3c719[stor254].field_1280 = arg4
    sub_8dd3c719[stor254].field_1536 = arg5
    sub_8dd3c719[stor254].field_1792 = arg6
    uint8(sub_8dd3c719[stor254].field_2048) = 1
    if not stor256[arg1][address(arg2)][1][stor254].field_0:
        stor256[arg1][address(arg2)].field_0++
        stor256[arg1][address(arg2)][stor256[arg1][address(arg2)].field_0].field_0 = stor254
        stor256[arg1][address(arg2)][1][stor254].field_0 = stor256[arg1][address(arg2)].field_0
    if not stor258[msg.sender][1][stor254].field_0:
        stor258[msg.sender].field_0++
        stor258[msg.sender][stor258[msg.sender].field_0].field_0 = stor254
        stor258[msg.sender][1][stor254].field_0 = stor258[msg.sender].field_0
    stor254++
    if arg3 and arg4 > -1 / arg3:
        revert with 0, 17
    mem[ceil32(return_data.size) + 420] = msg.sender
    mem[ceil32(return_data.size) + 452] = this.address
    mem[ceil32(return_data.size) + 484] = arg3 * arg4
    mem[ceil32(return_data.size) + 384] = 100
    mem[ceil32(return_data.size) + 420 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 416 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 516] = 32
    mem[ceil32(return_data.size) + 548] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 580 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg4, 0
    mem[ceil32(return_data.size) + 680] = 0
    call address(arg2) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3 * arg4, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
            if not uint32(arg1), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 612] == bool(mem[ceil32(return_data.size) + 612])
            if not mem[ceil32(return_data.size) + 612]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x86e23fb5: address(arg2), arg3, arg4, arg5, arg6, stor254, msg.sender, arg1
    return stor254
}

function getOffersOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    if stor258[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor258[address(arg1)].field_0
    mem[64] = (32 * stor258[address(arg1)].field_0) + 128
    if not stor258[address(arg1)].field_0:
        mem[0] = arg1
        mem[32] = 258
        if var34002 >= var34001:
            mem[(32 * stor258[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor258[address(arg1)].field_0) + 160] = stor258[address(arg1)].field_0
            idx = 0
            s = (32 * stor258[address(arg1)].field_0) + 192
            t = 128
            while idx < mem[96]:
                _212 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_212 + 44 len 20]
                mem[s + 64] = mem[_212 + 64]
                mem[s + 96] = mem[_212 + 108 len 20]
                mem[s + 128] = mem[_212 + 128]
                mem[s + 160] = mem[_212 + 160]
                mem[s + 192] = mem[_212 + 192]
                mem[s + 224] = mem[_212 + 224]
                mem[s + 256] = bool(mem[_212 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * stor258[address(arg1)].field_0) + -mem[64] + 192
        if var40001 < stor[var40002]:
            mem[0] = var44001
            mem[32] = 261
            mem[64] = (32 * stor258[address(arg1)].field_0) + 416
            mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[var44001].field_0
            mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
            mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var44001].field_512
            mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
            mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
            mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
            mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
            mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
            mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
            s = var44001
            idx = var44008
            while idx < stor258[address(arg1)].field_0:
                mem[(32 * idx) + 128] = (32 * stor258[address(arg1)].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 258
                if idx + 1 >= stor258[address(arg1)].field_0:
                    _449 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor258[address(arg1)].field_0
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < stor258[address(arg1)].field_0:
                        _478 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_478 + 44 len 20]
                        mem[t + 64] = mem[_478 + 64]
                        mem[t + 96] = mem[_478 + 108 len 20]
                        mem[t + 128] = mem[_478 + 128]
                        mem[t + 160] = mem[_478 + 160]
                        mem[t + 192] = mem[_478 + 192]
                        mem[t + 224] = mem[_478 + 224]
                        mem[t + 256] = bool(mem[_478 + 256])
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
                        mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var44001].field_512
                        mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
                        mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
                        mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
                        mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
                        mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
                        mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _449 + (288 * stor258[address(arg1)].field_0) + -mem[64] + 64
                if idx + 1 >= stor258[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = stor258[address(arg1)][idx].field_512
                mem[32] = 261
                mem[64] = mem[64] + 288
                mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[stor258[address(arg1)][idx].field_512].field_0
                mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
                mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var44001].field_512
                mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
                mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
                mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
                mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
                mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
                mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
                s = stor258[address(arg1)][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor258[address(arg1)].field_0) + 416
        mem[(32 * stor258[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 160] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 192] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 256] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 288] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 320] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 352] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 384] = 0
        mem[var17001] = (32 * stor258[address(arg1)].field_0) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor258[address(arg1)].field_0) + 128] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 160] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 192] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 224] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 256] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 288] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 320] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 352] = 0
            mem[(32 * stor258[address(arg1)].field_0) + 384] = 0
            mem[s + 32] = (32 * stor258[address(arg1)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 258
        if var41002 >= var41001:
            _263 = mem[64]
            mem[mem[64]] = 32
            _264 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _264:
                _314 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_314 + 44 len 20]
                mem[s + 64] = mem[_314 + 64]
                mem[s + 96] = mem[_314 + 108 len 20]
                mem[s + 128] = mem[_314 + 128]
                mem[s + 160] = mem[_314 + 160]
                mem[s + 192] = mem[_314 + 192]
                mem[s + 224] = mem[_314 + 224]
                mem[s + 256] = bool(mem[_314 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _263 + (288 * _264) + -mem[64] + 64
        if var47001 < stor[var47002]:
            mem[0] = var51001
            mem[32] = 261
            _509 = mem[64]
            mem[64] = mem[64] + 288
            mem[_509] = sub_8dd3c719[var51001].field_0
            mem[_509 + 32] = address(sub_8dd3c719[var51001].field_256)
            mem[_509 + 64] = sub_8dd3c719[var51001].field_512
            mem[_509 + 96] = address(sub_8dd3c719[var51001].field_768)
            mem[_509 + 128] = sub_8dd3c719[var51001].field_1024
            mem[_509 + 160] = sub_8dd3c719[var51001].field_1280
            mem[_509 + 192] = sub_8dd3c719[var51001].field_1536
            mem[_509 + 224] = sub_8dd3c719[var51001].field_1792
            mem[_509 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
            _510 = mem[96]
            s = var51001
            idx = var51008
            while idx < _510:
                mem[(32 * idx) + 128] = _509
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 258
                if idx + 1 >= stor258[address(arg1)].field_0:
                    _513 = mem[64]
                    mem[mem[64]] = 32
                    _514 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < _514:
                        _527 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_527 + 44 len 20]
                        mem[t + 64] = mem[_527 + 64]
                        mem[t + 96] = mem[_527 + 108 len 20]
                        mem[t + 128] = mem[_527 + 128]
                        mem[t + 160] = mem[_527 + 160]
                        mem[t + 192] = mem[_527 + 192]
                        mem[t + 224] = mem[_527 + 224]
                        mem[t + 256] = bool(mem[_527 + 256])
                        mem[0] = s
                        mem[32] = 261
                        _509 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_509] = sub_8dd3c719[s].field_0
                        mem[_509 + 32] = address(sub_8dd3c719[var51001].field_256)
                        mem[_509 + 64] = sub_8dd3c719[var51001].field_512
                        mem[_509 + 96] = address(sub_8dd3c719[var51001].field_768)
                        mem[_509 + 128] = sub_8dd3c719[var51001].field_1024
                        mem[_509 + 160] = sub_8dd3c719[var51001].field_1280
                        mem[_509 + 192] = sub_8dd3c719[var51001].field_1536
                        mem[_509 + 224] = sub_8dd3c719[var51001].field_1792
                        mem[_509 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _513 + (288 * _514) + -mem[64] + 64
                if idx + 1 >= stor258[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = stor258[address(arg1)][idx].field_512
                mem[32] = 261
                _509 = mem[64]
                mem[64] = mem[64] + 288
                mem[_509] = sub_8dd3c719[stor258[address(arg1)][idx].field_512].field_0
                mem[_509 + 32] = address(sub_8dd3c719[var51001].field_256)
                mem[_509 + 64] = sub_8dd3c719[var51001].field_512
                mem[_509 + 96] = address(sub_8dd3c719[var51001].field_768)
                mem[_509 + 128] = sub_8dd3c719[var51001].field_1024
                mem[_509 + 160] = sub_8dd3c719[var51001].field_1280
                mem[_509 + 192] = sub_8dd3c719[var51001].field_1536
                mem[_509 + 224] = sub_8dd3c719[var51001].field_1792
                mem[_509 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
                s = stor258[address(arg1)][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_8ad06476(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if stor257[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor257[address(arg1)].field_0
    mem[64] = (32 * stor257[address(arg1)].field_0) + 128
    if not stor257[address(arg1)].field_0:
        mem[0] = address(arg1)
        mem[32] = 257
        if var34002 >= var34001:
            mem[(32 * stor257[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor257[address(arg1)].field_0) + 160] = stor257[address(arg1)].field_0
            idx = 0
            s = (32 * stor257[address(arg1)].field_0) + 192
            t = 128
            while idx < mem[96]:
                _212 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_212 + 44 len 20]
                mem[s + 64] = mem[_212 + 64]
                mem[s + 96] = mem[_212 + 108 len 20]
                mem[s + 128] = mem[_212 + 128]
                mem[s + 160] = mem[_212 + 160]
                mem[s + 192] = mem[_212 + 192]
                mem[s + 224] = mem[_212 + 224]
                mem[s + 256] = bool(mem[_212 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * stor257[address(arg1)].field_0) + -mem[64] + 192
        if var40001 < stor[var40002]:
            mem[0] = var44001
            mem[32] = 260
            mem[64] = (32 * stor257[address(arg1)].field_0) + 416
            mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[var44001].field_0
            mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
            mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var44001].field_512
            mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
            mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var44001].field_1024
            mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var44001].field_1280
            mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var44001].field_1536
            mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var44001].field_1792
            mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
            s = var44001
            idx = var44008
            while idx < stor257[address(arg1)].field_0:
                mem[(32 * idx) + 128] = (32 * stor257[address(arg1)].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 257
                if idx + 1 >= stor257[address(arg1)].field_0:
                    _449 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor257[address(arg1)].field_0
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < stor257[address(arg1)].field_0:
                        _478 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_478 + 44 len 20]
                        mem[t + 64] = mem[_478 + 64]
                        mem[t + 96] = mem[_478 + 108 len 20]
                        mem[t + 128] = mem[_478 + 128]
                        mem[t + 160] = mem[_478 + 160]
                        mem[t + 192] = mem[_478 + 192]
                        mem[t + 224] = mem[_478 + 224]
                        mem[t + 256] = bool(mem[_478 + 256])
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
                        mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var44001].field_512
                        mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
                        mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var44001].field_1024
                        mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var44001].field_1280
                        mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var44001].field_1536
                        mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var44001].field_1792
                        mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _449 + (288 * stor257[address(arg1)].field_0) + -mem[64] + 64
                if idx + 1 >= stor257[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = stor257[address(arg1)][idx].field_512
                mem[32] = 260
                mem[64] = mem[64] + 288
                mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[stor257[address(arg1)][idx].field_512].field_0
                mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
                mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var44001].field_512
                mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
                mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var44001].field_1024
                mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var44001].field_1280
                mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var44001].field_1536
                mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var44001].field_1792
                mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
                s = stor257[address(arg1)][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor257[address(arg1)].field_0) + 416
        mem[(32 * stor257[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 160] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 192] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 256] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 288] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 320] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 352] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 384] = 0
        mem[var17001] = (32 * stor257[address(arg1)].field_0) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor257[address(arg1)].field_0) + 128] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 160] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 192] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 224] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 256] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 288] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 320] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 352] = 0
            mem[(32 * stor257[address(arg1)].field_0) + 384] = 0
            mem[s + 32] = (32 * stor257[address(arg1)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 257
        if var41002 >= var41001:
            _263 = mem[64]
            mem[mem[64]] = 32
            _264 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _264:
                _314 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_314 + 44 len 20]
                mem[s + 64] = mem[_314 + 64]
                mem[s + 96] = mem[_314 + 108 len 20]
                mem[s + 128] = mem[_314 + 128]
                mem[s + 160] = mem[_314 + 160]
                mem[s + 192] = mem[_314 + 192]
                mem[s + 224] = mem[_314 + 224]
                mem[s + 256] = bool(mem[_314 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _263 + (288 * _264) + -mem[64] + 64
        if var47001 < stor[var47002]:
            mem[0] = var51001
            mem[32] = 260
            _509 = mem[64]
            mem[64] = mem[64] + 288
            mem[_509] = sub_4056639c[var51001].field_0
            mem[_509 + 32] = address(sub_4056639c[var51001].field_256)
            mem[_509 + 64] = sub_4056639c[var51001].field_512
            mem[_509 + 96] = address(sub_4056639c[var51001].field_768)
            mem[_509 + 128] = sub_4056639c[var51001].field_1024
            mem[_509 + 160] = sub_4056639c[var51001].field_1280
            mem[_509 + 192] = sub_4056639c[var51001].field_1536
            mem[_509 + 224] = sub_4056639c[var51001].field_1792
            mem[_509 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
            _510 = mem[96]
            s = var51001
            idx = var51008
            while idx < _510:
                mem[(32 * idx) + 128] = _509
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 257
                if idx + 1 >= stor257[address(arg1)].field_0:
                    _513 = mem[64]
                    mem[mem[64]] = 32
                    _514 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < _514:
                        _527 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_527 + 44 len 20]
                        mem[t + 64] = mem[_527 + 64]
                        mem[t + 96] = mem[_527 + 108 len 20]
                        mem[t + 128] = mem[_527 + 128]
                        mem[t + 160] = mem[_527 + 160]
                        mem[t + 192] = mem[_527 + 192]
                        mem[t + 224] = mem[_527 + 224]
                        mem[t + 256] = bool(mem[_527 + 256])
                        mem[0] = s
                        mem[32] = 260
                        _509 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_509] = sub_4056639c[s].field_0
                        mem[_509 + 32] = address(sub_4056639c[var51001].field_256)
                        mem[_509 + 64] = sub_4056639c[var51001].field_512
                        mem[_509 + 96] = address(sub_4056639c[var51001].field_768)
                        mem[_509 + 128] = sub_4056639c[var51001].field_1024
                        mem[_509 + 160] = sub_4056639c[var51001].field_1280
                        mem[_509 + 192] = sub_4056639c[var51001].field_1536
                        mem[_509 + 224] = sub_4056639c[var51001].field_1792
                        mem[_509 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _513 + (288 * _514) + -mem[64] + 64
                if idx + 1 >= stor257[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = stor257[address(arg1)][idx].field_512
                mem[32] = 260
                _509 = mem[64]
                mem[64] = mem[64] + 288
                mem[_509] = sub_4056639c[stor257[address(arg1)][idx].field_512].field_0
                mem[_509 + 32] = address(sub_4056639c[var51001].field_256)
                mem[_509 + 64] = sub_4056639c[var51001].field_512
                mem[_509 + 96] = address(sub_4056639c[var51001].field_768)
                mem[_509 + 128] = sub_4056639c[var51001].field_1024
                mem[_509 + 160] = sub_4056639c[var51001].field_1280
                mem[_509 + 192] = sub_4056639c[var51001].field_1536
                mem[_509 + 224] = sub_4056639c[var51001].field_1792
                mem[_509 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
                s = stor257[address(arg1)][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_57a81830(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 255)
    if stor255[arg1][address(arg2)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor255[arg1][address(arg2)].field_0
    mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + 128
    if not stor255[arg1][address(arg2)].field_0:
        if var34002 >= stor255[arg1][address(arg2)].field_0:
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = 32
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = stor255[arg1][address(arg2)].field_0
            idx = 0
            s = (32 * stor255[arg1][address(arg2)].field_0) + 192
            t = 128
            while idx < mem[96]:
                _190 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_190 + 44 len 20]
                mem[s + 64] = mem[_190 + 64]
                mem[s + 96] = mem[_190 + 108 len 20]
                mem[s + 128] = mem[_190 + 128]
                mem[s + 160] = mem[_190 + 160]
                mem[s + 192] = mem[_190 + 192]
                mem[s + 224] = mem[_190 + 224]
                mem[s + 256] = bool(mem[_190 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * stor255[arg1][address(arg2)].field_0) + -mem[64] + 192
        if var40001 < stor255[arg1][address(arg2)].field_0:
            mem[0] = var44001
            mem[32] = 260
            mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + 416
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[var44001].field_0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var44001].field_512
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var44001].field_1024
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var44001].field_1280
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var44001].field_1536
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var44001].field_1792
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
            s = var44001
            idx = var44008
            while idx < stor255[arg1][address(arg2)].field_0:
                mem[(32 * idx) + 128] = (32 * stor255[arg1][address(arg2)].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor255[arg1][address(arg2)].field_0:
                    _403 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor255[arg1][address(arg2)].field_0
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < stor255[arg1][address(arg2)].field_0:
                        _431 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_431 + 44 len 20]
                        mem[t + 64] = mem[_431 + 64]
                        mem[t + 96] = mem[_431 + 108 len 20]
                        mem[t + 128] = mem[_431 + 128]
                        mem[t + 160] = mem[_431 + 160]
                        mem[t + 192] = mem[_431 + 192]
                        mem[t + 224] = mem[_431 + 224]
                        mem[t + 256] = bool(mem[_431 + 256])
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var44001].field_512
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var44001].field_1024
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var44001].field_1280
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var44001].field_1536
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var44001].field_1792
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _403 + (288 * stor255[arg1][address(arg2)].field_0) + -mem[64] + 64
                mem[0] = stor255[arg1][address(arg2)][idx].field_512
                mem[32] = 260
                mem[64] = mem[64] + 288
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[stor255[arg1][address(arg2)][idx].field_512].field_0
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var44001].field_256)
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var44001].field_512
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var44001].field_768)
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var44001].field_1024
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var44001].field_1280
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var44001].field_1536
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var44001].field_1792
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var44001].field_2048))
                s = stor255[arg1][address(arg2)][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + 416
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = 0
        mem[var17001] = (32 * stor255[arg1][address(arg2)].field_0) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = 0
            mem[s + 32] = (32 * stor255[arg1][address(arg2)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var41002 >= stor255[arg1][address(arg2)].field_0:
            _236 = mem[64]
            mem[mem[64]] = 32
            _237 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _237:
                _283 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_283 + 44 len 20]
                mem[s + 64] = mem[_283 + 64]
                mem[s + 96] = mem[_283 + 108 len 20]
                mem[s + 128] = mem[_283 + 128]
                mem[s + 160] = mem[_283 + 160]
                mem[s + 192] = mem[_283 + 192]
                mem[s + 224] = mem[_283 + 224]
                mem[s + 256] = bool(mem[_283 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _236 + (288 * _237) + -mem[64] + 64
        if var47001 < stor255[arg1][address(arg2)].field_0:
            mem[0] = var51001
            mem[32] = 260
            _460 = mem[64]
            mem[64] = mem[64] + 288
            mem[_460] = sub_4056639c[var51001].field_0
            mem[_460 + 32] = address(sub_4056639c[var51001].field_256)
            mem[_460 + 64] = sub_4056639c[var51001].field_512
            mem[_460 + 96] = address(sub_4056639c[var51001].field_768)
            mem[_460 + 128] = sub_4056639c[var51001].field_1024
            mem[_460 + 160] = sub_4056639c[var51001].field_1280
            mem[_460 + 192] = sub_4056639c[var51001].field_1536
            mem[_460 + 224] = sub_4056639c[var51001].field_1792
            mem[_460 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
            _461 = mem[96]
            s = var51001
            idx = var51008
            while idx < _461:
                mem[(32 * idx) + 128] = _460
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor255[arg1][address(arg2)].field_0:
                    _462 = mem[64]
                    mem[mem[64]] = 32
                    _463 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < _463:
                        _476 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_476 + 44 len 20]
                        mem[t + 64] = mem[_476 + 64]
                        mem[t + 96] = mem[_476 + 108 len 20]
                        mem[t + 128] = mem[_476 + 128]
                        mem[t + 160] = mem[_476 + 160]
                        mem[t + 192] = mem[_476 + 192]
                        mem[t + 224] = mem[_476 + 224]
                        mem[t + 256] = bool(mem[_476 + 256])
                        mem[0] = s
                        mem[32] = 260
                        _460 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_460] = sub_4056639c[s].field_0
                        mem[_460 + 32] = address(sub_4056639c[var51001].field_256)
                        mem[_460 + 64] = sub_4056639c[var51001].field_512
                        mem[_460 + 96] = address(sub_4056639c[var51001].field_768)
                        mem[_460 + 128] = sub_4056639c[var51001].field_1024
                        mem[_460 + 160] = sub_4056639c[var51001].field_1280
                        mem[_460 + 192] = sub_4056639c[var51001].field_1536
                        mem[_460 + 224] = sub_4056639c[var51001].field_1792
                        mem[_460 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _462 + (288 * _463) + -mem[64] + 64
                mem[0] = stor255[arg1][address(arg2)][idx].field_512
                mem[32] = 260
                _460 = mem[64]
                mem[64] = mem[64] + 288
                mem[_460] = sub_4056639c[stor255[arg1][address(arg2)][idx].field_512].field_0
                mem[_460 + 32] = address(sub_4056639c[var51001].field_256)
                mem[_460 + 64] = sub_4056639c[var51001].field_512
                mem[_460 + 96] = address(sub_4056639c[var51001].field_768)
                mem[_460 + 128] = sub_4056639c[var51001].field_1024
                mem[_460 + 160] = sub_4056639c[var51001].field_1280
                mem[_460 + 192] = sub_4056639c[var51001].field_1536
                mem[_460 + 224] = sub_4056639c[var51001].field_1792
                mem[_460 + 256] = bool(uint8(sub_4056639c[var51001].field_2048))
                s = stor255[arg1][address(arg2)][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_afbbdbd1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 256)
    if stor256[arg1][address(arg2)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor256[arg1][address(arg2)].field_0
    mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + 128
    if not stor256[arg1][address(arg2)].field_0:
        if var34002 >= stor256[arg1][address(arg2)].field_0:
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = 32
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = stor256[arg1][address(arg2)].field_0
            idx = 0
            s = (32 * stor256[arg1][address(arg2)].field_0) + 192
            t = 128
            while idx < mem[96]:
                _190 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_190 + 44 len 20]
                mem[s + 64] = mem[_190 + 64]
                mem[s + 96] = mem[_190 + 108 len 20]
                mem[s + 128] = mem[_190 + 128]
                mem[s + 160] = mem[_190 + 160]
                mem[s + 192] = mem[_190 + 192]
                mem[s + 224] = mem[_190 + 224]
                mem[s + 256] = bool(mem[_190 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * stor256[arg1][address(arg2)].field_0) + -mem[64] + 192
        if var40001 < stor256[arg1][address(arg2)].field_0:
            mem[0] = var44001
            mem[32] = 261
            mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + 416
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[var44001].field_0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var44001].field_512
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
            s = var44001
            idx = var44008
            while idx < stor256[arg1][address(arg2)].field_0:
                mem[(32 * idx) + 128] = (32 * stor256[arg1][address(arg2)].field_0) + 128
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor256[arg1][address(arg2)].field_0:
                    _403 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = stor256[arg1][address(arg2)].field_0
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < stor256[arg1][address(arg2)].field_0:
                        _431 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_431 + 44 len 20]
                        mem[t + 64] = mem[_431 + 64]
                        mem[t + 96] = mem[_431 + 108 len 20]
                        mem[t + 128] = mem[_431 + 128]
                        mem[t + 160] = mem[_431 + 160]
                        mem[t + 192] = mem[_431 + 192]
                        mem[t + 224] = mem[_431 + 224]
                        mem[t + 256] = bool(mem[_431 + 256])
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var44001].field_512
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _403 + (288 * stor256[arg1][address(arg2)].field_0) + -mem[64] + 64
                mem[0] = stor256[arg1][address(arg2)][idx].field_512
                mem[32] = 261
                mem[64] = mem[64] + 288
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[stor256[arg1][address(arg2)][idx].field_512].field_0
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var44001].field_256)
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var44001].field_512
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var44001].field_768)
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var44001].field_1024
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var44001].field_1280
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var44001].field_1536
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var44001].field_1792
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var44001].field_2048))
                s = stor256[arg1][address(arg2)][idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + 416
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = 0
        mem[var17001] = (32 * stor256[arg1][address(arg2)].field_0) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = 0
            mem[s + 32] = (32 * stor256[arg1][address(arg2)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var41002 >= stor256[arg1][address(arg2)].field_0:
            _236 = mem[64]
            mem[mem[64]] = 32
            _237 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _237:
                _283 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_283 + 44 len 20]
                mem[s + 64] = mem[_283 + 64]
                mem[s + 96] = mem[_283 + 108 len 20]
                mem[s + 128] = mem[_283 + 128]
                mem[s + 160] = mem[_283 + 160]
                mem[s + 192] = mem[_283 + 192]
                mem[s + 224] = mem[_283 + 224]
                mem[s + 256] = bool(mem[_283 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _236 + (288 * _237) + -mem[64] + 64
        if var47001 < stor256[arg1][address(arg2)].field_0:
            mem[0] = var51001
            mem[32] = 261
            _460 = mem[64]
            mem[64] = mem[64] + 288
            mem[_460] = sub_8dd3c719[var51001].field_0
            mem[_460 + 32] = address(sub_8dd3c719[var51001].field_256)
            mem[_460 + 64] = sub_8dd3c719[var51001].field_512
            mem[_460 + 96] = address(sub_8dd3c719[var51001].field_768)
            mem[_460 + 128] = sub_8dd3c719[var51001].field_1024
            mem[_460 + 160] = sub_8dd3c719[var51001].field_1280
            mem[_460 + 192] = sub_8dd3c719[var51001].field_1536
            mem[_460 + 224] = sub_8dd3c719[var51001].field_1792
            mem[_460 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
            _461 = mem[96]
            s = var51001
            idx = var51008
            while idx < _461:
                mem[(32 * idx) + 128] = _460
                if idx == -1:
                    revert with 0, 17
                if idx + 1 >= stor256[arg1][address(arg2)].field_0:
                    _462 = mem[64]
                    mem[mem[64]] = 32
                    _463 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    t = mem[64] + 64
                    u = 128
                    while idx < _463:
                        _476 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_476 + 44 len 20]
                        mem[t + 64] = mem[_476 + 64]
                        mem[t + 96] = mem[_476 + 108 len 20]
                        mem[t + 128] = mem[_476 + 128]
                        mem[t + 160] = mem[_476 + 160]
                        mem[t + 192] = mem[_476 + 192]
                        mem[t + 224] = mem[_476 + 224]
                        mem[t + 256] = bool(mem[_476 + 256])
                        mem[0] = s
                        mem[32] = 261
                        _460 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_460] = sub_8dd3c719[s].field_0
                        mem[_460 + 32] = address(sub_8dd3c719[var51001].field_256)
                        mem[_460 + 64] = sub_8dd3c719[var51001].field_512
                        mem[_460 + 96] = address(sub_8dd3c719[var51001].field_768)
                        mem[_460 + 128] = sub_8dd3c719[var51001].field_1024
                        mem[_460 + 160] = sub_8dd3c719[var51001].field_1280
                        mem[_460 + 192] = sub_8dd3c719[var51001].field_1536
                        mem[_460 + 224] = sub_8dd3c719[var51001].field_1792
                        mem[_460 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _462 + (288 * _463) + -mem[64] + 64
                mem[0] = stor256[arg1][address(arg2)][idx].field_512
                mem[32] = 261
                _460 = mem[64]
                mem[64] = mem[64] + 288
                mem[_460] = sub_8dd3c719[stor256[arg1][address(arg2)][idx].field_512].field_0
                mem[_460 + 32] = address(sub_8dd3c719[var51001].field_256)
                mem[_460 + 64] = sub_8dd3c719[var51001].field_512
                mem[_460 + 96] = address(sub_8dd3c719[var51001].field_768)
                mem[_460 + 128] = sub_8dd3c719[var51001].field_1024
                mem[_460 + 160] = sub_8dd3c719[var51001].field_1280
                mem[_460 + 192] = sub_8dd3c719[var51001].field_1536
                mem[_460 + 224] = sub_8dd3c719[var51001].field_1792
                mem[_460 + 256] = bool(uint8(sub_8dd3c719[var51001].field_2048))
                s = stor256[arg1][address(arg2)][idx].field_256
                idx = idx + 1
                continue 
    revert with 0, 50
}

function sub_7b5debce(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if stor257[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor257[address(arg1)].field_0
    if not stor257[address(arg1)].field_0:
        mem[0] = address(arg1)
        mem[32] = 257
        if var35002 < var35001:
            if var41001 < stor[var41002]:
                mem[0] = var45001
                mem[32] = 260
                mem[64] = (32 * stor257[address(arg1)].field_0) + 416
                mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[var45001].field_0
                mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                s = var45001
                idx = var45008
                while idx < stor257[address(arg1)].field_0:
                    mem[(32 * idx) + 128] = (32 * stor257[address(arg1)].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 257
                    if idx + 1 < stor257[address(arg1)].field_0:
                        if idx + 1 >= stor257[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = stor257[address(arg1)][idx].field_512
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[stor257[address(arg1)][idx].field_512].field_0
                        mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        s = stor257[address(arg1)][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg3 > test266151307():
                        revert with 0, 65
                    _1222 = mem[64]
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
                                if idx >= mem[_1222]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1222 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                            else:
                                _1324 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_1324] = 0
                                mem[_1324 + 32] = 0
                                mem[_1324 + 64] = 0
                                mem[_1324 + 96] = 0
                                mem[_1324 + 128] = 0
                                mem[_1324 + 160] = 0
                                mem[_1324 + 192] = 0
                                mem[_1324 + 224] = 0
                                mem[_1324 + 256] = 0
                                if idx >= mem[_1222]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1222 + 32] = _1324
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 260
                            mem[64] = mem[64] + 288
                            mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                            mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                            mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                            mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                            mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                            mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                            mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                            mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                            mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                            idx = idx + 1
                            continue 
                        _1309 = mem[64]
                        mem[mem[64]] = 32
                        _1310 = mem[_1222]
                        mem[mem[64] + 32] = mem[_1222]
                        idx = 0
                        t = mem[64] + 64
                        u = _1222 + 32
                        while idx < _1310:
                            _1393 = mem[u]
                            mem[t] = mem[mem[u]]
                            mem[t + 32] = mem[_1393 + 44 len 20]
                            mem[t + 64] = mem[_1393 + 64]
                            mem[t + 96] = mem[_1393 + 108 len 20]
                            mem[t + 128] = mem[_1393 + 128]
                            mem[t + 160] = mem[_1393 + 160]
                            mem[t + 192] = mem[_1393 + 192]
                            mem[t + 224] = mem[_1393 + 224]
                            mem[t + 256] = bool(mem[_1393 + 256])
                            mem[0] = s
                            mem[32] = 260
                            mem[64] = mem[64] + 288
                            mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                            mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                            mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                            mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                            mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                            mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                            mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                            mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                            mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                            idx = idx + 1
                            t = t + 288
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1309 + (288 * _1310) + -mem[64] + 64
                    mem[64] = _1222 + (32 * arg3) + 320
                    mem[_1222 + (32 * arg3) + 32] = 0
                    mem[_1222 + (32 * arg3) + 64] = 0
                    mem[_1222 + (32 * arg3) + 96] = 0
                    mem[_1222 + (32 * arg3) + 128] = 0
                    mem[_1222 + (32 * arg3) + 160] = 0
                    mem[_1222 + (32 * arg3) + 192] = 0
                    mem[_1222 + (32 * arg3) + 224] = 0
                    mem[_1222 + (32 * arg3) + 256] = 0
                    mem[_1222 + (32 * arg3) + 288] = 0
                    mem[var51001] = _1222 + (32 * arg3) + 32
                    t = var51001
                    idx = var51002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        mem[64] = mem[64] + 288
                        mem[_1222 + (32 * arg3) + 32] = 0
                        mem[_1222 + (32 * arg3) + 64] = 0
                        mem[_1222 + (32 * arg3) + 96] = 0
                        mem[_1222 + (32 * arg3) + 128] = 0
                        mem[_1222 + (32 * arg3) + 160] = 0
                        mem[_1222 + (32 * arg3) + 192] = 0
                        mem[_1222 + (32 * arg3) + 224] = 0
                        mem[_1222 + (32 * arg3) + 256] = 0
                        mem[_1222 + (32 * arg3) + 288] = 0
                        mem[t + 32] = _1222 + (32 * arg3) + 32
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
                            if idx >= mem[_1222]:
                                revert with 0, 50
                            mem[(32 * idx) + _1222 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1496 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1496] = 0
                            mem[_1496 + 32] = 0
                            mem[_1496 + 64] = 0
                            mem[_1496 + 96] = 0
                            mem[_1496 + 128] = 0
                            mem[_1496 + 160] = 0
                            mem[_1496 + 192] = 0
                            mem[_1496 + 224] = 0
                            mem[_1496 + 256] = 0
                            if idx >= mem[_1222]:
                                revert with 0, 50
                            mem[(32 * idx) + _1222 + 32] = _1496
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        idx = idx + 1
                        continue 
                    _1469 = mem[64]
                    mem[mem[64]] = 32
                    _1471 = mem[_1222]
                    mem[mem[64] + 32] = mem[_1222]
                    idx = 0
                    t = mem[64] + 64
                    u = _1222 + 32
                    while idx < _1471:
                        _1525 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1525 + 44 len 20]
                        mem[t + 64] = mem[_1525 + 64]
                        mem[t + 96] = mem[_1525 + 108 len 20]
                        mem[t + 128] = mem[_1525 + 128]
                        mem[t + 160] = mem[_1525 + 160]
                        mem[t + 192] = mem[_1525 + 192]
                        mem[t + 224] = mem[_1525 + 224]
                        mem[t + 256] = bool(mem[_1525 + 256])
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor257[address(arg1)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor257[address(arg1)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor257[address(arg1)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor257[address(arg1)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor257[address(arg1)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor257[address(arg1)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor257[address(arg1)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor257[address(arg1)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor257[address(arg1)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1469 + (288 * _1471) + -mem[64] + 64
            revert with 0, 50
        if arg3 > test266151307():
            revert with 0, 65
        mem[(32 * stor257[address(arg1)].field_0) + 128] = arg3
        mem[64] = (32 * stor257[address(arg1)].field_0) + (32 * arg3) + 160
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
                    if idx >= mem[(32 * stor257[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor257[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                else:
                    _535 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_535] = 0
                    mem[_535 + 32] = 0
                    mem[_535 + 64] = 0
                    mem[_535 + 96] = 0
                    mem[_535 + 128] = 0
                    mem[_535 + 160] = 0
                    mem[_535 + 192] = 0
                    mem[_535 + 224] = 0
                    mem[_535 + 256] = 0
                    if idx >= mem[(32 * stor257[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor257[address(arg1)].field_0) + 160] = _535
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _512 = mem[64]
            mem[mem[64]] = 32
            _514 = mem[(32 * stor257[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor257[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor257[address(arg1)].field_0) + 160
            while idx < _514:
                _641 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_641 + 44 len 20]
                mem[s + 64] = mem[_641 + 64]
                mem[s + 96] = mem[_641 + 108 len 20]
                mem[s + 128] = mem[_641 + 128]
                mem[s + 160] = mem[_641 + 160]
                mem[s + 192] = mem[_641 + 192]
                mem[s + 224] = mem[_641 + 224]
                mem[s + 256] = bool(mem[_641 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _512 + (288 * _514) + -mem[64] + 64
        mem[64] = (32 * stor257[address(arg1)].field_0) + (32 * arg3) + 448
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 160] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 192] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 224] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 256] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 288] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 320] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 352] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 384] = 0
        mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 416] = 0
        mem[var31001] = (32 * stor257[address(arg1)].field_0) + (32 * arg3) + 160
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 160] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 192] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 224] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 256] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 288] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 320] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 352] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 384] = 0
            mem[(32 * stor257[address(arg1)].field_0) + (32 * arg3) + 416] = 0
            mem[s + 32] = (32 * stor257[address(arg1)].field_0) + (32 * arg3) + 160
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
                if idx >= mem[(32 * stor257[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor257[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _842 = mem[64]
                mem[64] = mem[64] + 288
                mem[_842] = 0
                mem[_842 + 32] = 0
                mem[_842 + 64] = 0
                mem[_842 + 96] = 0
                mem[_842 + 128] = 0
                mem[_842 + 160] = 0
                mem[_842 + 192] = 0
                mem[_842 + 224] = 0
                mem[_842 + 256] = 0
                if idx >= mem[(32 * stor257[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor257[address(arg1)].field_0) + 160] = _842
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _808 = mem[64]
        mem[mem[64]] = 32
        _814 = mem[(32 * stor257[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor257[address(arg1)].field_0) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * stor257[address(arg1)].field_0) + 160
        while idx < _814:
            _956 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_956 + 44 len 20]
            mem[s + 64] = mem[_956 + 64]
            mem[s + 96] = mem[_956 + 108 len 20]
            mem[s + 128] = mem[_956 + 128]
            mem[s + 160] = mem[_956 + 160]
            mem[s + 192] = mem[_956 + 192]
            mem[s + 224] = mem[_956 + 224]
            mem[s + 256] = bool(mem[_956 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _808 + (288 * _814) + -mem[64] + 64
    mem[64] = (32 * stor257[address(arg1)].field_0) + 416
    mem[(32 * stor257[address(arg1)].field_0) + 128] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 160] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 192] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 224] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 256] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 288] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 320] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 352] = 0
    mem[(32 * stor257[address(arg1)].field_0) + 384] = 0
    mem[var18001] = (32 * stor257[address(arg1)].field_0) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor257[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 160] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 192] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 256] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 288] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 320] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 352] = 0
        mem[(32 * stor257[address(arg1)].field_0) + 384] = 0
        mem[s + 32] = (32 * stor257[address(arg1)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 257
    if var42002 < var42001:
        if var48001 < stor[var48002]:
            mem[0] = var52001
            mem[32] = 260
            _1391 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1391] = sub_4056639c[var52001].field_0
            mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
            mem[_1391 + 64] = sub_4056639c[var52001].field_512
            mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
            mem[_1391 + 128] = sub_4056639c[var52001].field_1024
            mem[_1391 + 160] = sub_4056639c[var52001].field_1280
            mem[_1391 + 192] = sub_4056639c[var52001].field_1536
            mem[_1391 + 224] = sub_4056639c[var52001].field_1792
            mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
            _1392 = mem[96]
            s = var52001
            idx = var52008
            while idx < _1392:
                mem[(32 * idx) + 128] = _1391
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 257
                if idx + 1 < stor257[address(arg1)].field_0:
                    if idx + 1 >= stor257[address(arg1)].field_0:
                        revert with 0, 50
                    mem[0] = stor257[address(arg1)][idx].field_512
                    mem[32] = 260
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_4056639c[stor257[address(arg1)][idx].field_512].field_0
                    mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1391 + 64] = sub_4056639c[var52001].field_512
                    mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    s = stor257[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
                if arg3 > test266151307():
                    revert with 0, 65
                _1422 = mem[64]
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
                            if idx >= mem[_1422]:
                                revert with 0, 50
                            mem[(32 * idx) + _1422 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1498 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1498] = 0
                            mem[_1498 + 32] = 0
                            mem[_1498 + 64] = 0
                            mem[_1498 + 96] = 0
                            mem[_1498 + 128] = 0
                            mem[_1498 + 160] = 0
                            mem[_1498 + 192] = 0
                            mem[_1498 + 224] = 0
                            mem[_1498 + 256] = 0
                            if idx >= mem[_1422]:
                                revert with 0, 50
                            mem[(32 * idx) + _1422 + 32] = _1498
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 260
                        _1391 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1391] = sub_4056639c[s].field_0
                        mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                        mem[_1391 + 64] = sub_4056639c[var52001].field_512
                        mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                        mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                        mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                        mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                        mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                        mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                        idx = idx + 1
                        continue 
                    _1470 = mem[64]
                    mem[mem[64]] = 32
                    _1472 = mem[_1422]
                    mem[mem[64] + 32] = mem[_1422]
                    idx = 0
                    t = mem[64] + 64
                    u = _1422 + 32
                    while idx < _1472:
                        _1526 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1526 + 44 len 20]
                        mem[t + 64] = mem[_1526 + 64]
                        mem[t + 96] = mem[_1526 + 108 len 20]
                        mem[t + 128] = mem[_1526 + 128]
                        mem[t + 160] = mem[_1526 + 160]
                        mem[t + 192] = mem[_1526 + 192]
                        mem[t + 224] = mem[_1526 + 224]
                        mem[t + 256] = bool(mem[_1526 + 256])
                        mem[0] = s
                        mem[32] = 260
                        _1391 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1391] = sub_4056639c[s].field_0
                        mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                        mem[_1391 + 64] = sub_4056639c[var52001].field_512
                        mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                        mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                        mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                        mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                        mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                        mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1470 + (288 * _1472) + -mem[64] + 64
                mem[64] = _1422 + (32 * arg3) + 320
                mem[_1422 + (32 * arg3) + 32] = 0
                mem[_1422 + (32 * arg3) + 64] = 0
                mem[_1422 + (32 * arg3) + 96] = 0
                mem[_1422 + (32 * arg3) + 128] = 0
                mem[_1422 + (32 * arg3) + 160] = 0
                mem[_1422 + (32 * arg3) + 192] = 0
                mem[_1422 + (32 * arg3) + 224] = 0
                mem[_1422 + (32 * arg3) + 256] = 0
                mem[_1422 + (32 * arg3) + 288] = 0
                mem[var58001] = _1422 + (32 * arg3) + 32
                t = var58001
                idx = var58002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 260
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_4056639c[s].field_0
                    mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1391 + 64] = sub_4056639c[var52001].field_512
                    mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    mem[64] = mem[64] + 288
                    mem[_1422 + (32 * arg3) + 32] = 0
                    mem[_1422 + (32 * arg3) + 64] = 0
                    mem[_1422 + (32 * arg3) + 96] = 0
                    mem[_1422 + (32 * arg3) + 128] = 0
                    mem[_1422 + (32 * arg3) + 160] = 0
                    mem[_1422 + (32 * arg3) + 192] = 0
                    mem[_1422 + (32 * arg3) + 224] = 0
                    mem[_1422 + (32 * arg3) + 256] = 0
                    mem[_1422 + (32 * arg3) + 288] = 0
                    mem[t + 32] = _1422 + (32 * arg3) + 32
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
                        if idx >= mem[_1422]:
                            revert with 0, 50
                        mem[(32 * idx) + _1422 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    else:
                        _1580 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1580] = 0
                        mem[_1580 + 32] = 0
                        mem[_1580 + 64] = 0
                        mem[_1580 + 96] = 0
                        mem[_1580 + 128] = 0
                        mem[_1580 + 160] = 0
                        mem[_1580 + 192] = 0
                        mem[_1580 + 224] = 0
                        mem[_1580 + 256] = 0
                        if idx >= mem[_1422]:
                            revert with 0, 50
                        mem[(32 * idx) + _1422 + 32] = _1580
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 260
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_4056639c[s].field_0
                    mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1391 + 64] = sub_4056639c[var52001].field_512
                    mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    idx = idx + 1
                    continue 
                _1567 = mem[64]
                mem[mem[64]] = 32
                _1568 = mem[_1422]
                mem[mem[64] + 32] = mem[_1422]
                idx = 0
                t = mem[64] + 64
                u = _1422 + 32
                while idx < _1568:
                    _1585 = mem[u]
                    mem[t] = mem[mem[u]]
                    mem[t + 32] = mem[_1585 + 44 len 20]
                    mem[t + 64] = mem[_1585 + 64]
                    mem[t + 96] = mem[_1585 + 108 len 20]
                    mem[t + 128] = mem[_1585 + 128]
                    mem[t + 160] = mem[_1585 + 160]
                    mem[t + 192] = mem[_1585 + 192]
                    mem[t + 224] = mem[_1585 + 224]
                    mem[t + 256] = bool(mem[_1585 + 256])
                    mem[0] = s
                    mem[32] = 260
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_4056639c[s].field_0
                    mem[_1391 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1391 + 64] = sub_4056639c[var52001].field_512
                    mem[_1391 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1391 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1391 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1391 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1391 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    idx = idx + 1
                    t = t + 288
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _1567 + (288 * _1568) + -mem[64] + 64
        revert with 0, 50
    if arg3 > test266151307():
        revert with 0, 65
    _657 = mem[64]
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
                if idx >= mem[_657]:
                    revert with 0, 50
                mem[(32 * idx) + _657 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _845 = mem[64]
                mem[64] = mem[64] + 288
                mem[_845] = 0
                mem[_845 + 32] = 0
                mem[_845 + 64] = 0
                mem[_845 + 96] = 0
                mem[_845 + 128] = 0
                mem[_845 + 160] = 0
                mem[_845 + 192] = 0
                mem[_845 + 224] = 0
                mem[_845 + 256] = 0
                if idx >= mem[_657]:
                    revert with 0, 50
                mem[(32 * idx) + _657 + 32] = _845
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _812 = mem[64]
        mem[mem[64]] = 32
        _815 = mem[_657]
        mem[mem[64] + 32] = mem[_657]
        idx = 0
        s = mem[64] + 64
        t = _657 + 32
        while idx < _815:
            _957 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_957 + 44 len 20]
            mem[s + 64] = mem[_957 + 64]
            mem[s + 96] = mem[_957 + 108 len 20]
            mem[s + 128] = mem[_957 + 128]
            mem[s + 160] = mem[_957 + 160]
            mem[s + 192] = mem[_957 + 192]
            mem[s + 224] = mem[_957 + 224]
            mem[s + 256] = bool(mem[_957 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _812 + (288 * _815) + -mem[64] + 64
    mem[64] = _657 + (32 * arg3) + 320
    mem[_657 + (32 * arg3) + 32] = 0
    mem[_657 + (32 * arg3) + 64] = 0
    mem[_657 + (32 * arg3) + 96] = 0
    mem[_657 + (32 * arg3) + 128] = 0
    mem[_657 + (32 * arg3) + 160] = 0
    mem[_657 + (32 * arg3) + 192] = 0
    mem[_657 + (32 * arg3) + 224] = 0
    mem[_657 + (32 * arg3) + 256] = 0
    mem[_657 + (32 * arg3) + 288] = 0
    mem[var38001] = _657 + (32 * arg3) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[_657 + (32 * arg3) + 32] = 0
        mem[_657 + (32 * arg3) + 64] = 0
        mem[_657 + (32 * arg3) + 96] = 0
        mem[_657 + (32 * arg3) + 128] = 0
        mem[_657 + (32 * arg3) + 160] = 0
        mem[_657 + (32 * arg3) + 192] = 0
        mem[_657 + (32 * arg3) + 224] = 0
        mem[_657 + (32 * arg3) + 256] = 0
        mem[_657 + (32 * arg3) + 288] = 0
        mem[s + 32] = _657 + (32 * arg3) + 32
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
            if idx >= mem[_657]:
                revert with 0, 50
            mem[(32 * idx) + _657 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
        else:
            _1111 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1111] = 0
            mem[_1111 + 32] = 0
            mem[_1111 + 64] = 0
            mem[_1111 + 96] = 0
            mem[_1111 + 128] = 0
            mem[_1111 + 160] = 0
            mem[_1111 + 192] = 0
            mem[_1111 + 224] = 0
            mem[_1111 + 256] = 0
            if idx >= mem[_657]:
                revert with 0, 50
            mem[(32 * idx) + _657 + 32] = _1111
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1094 = mem[64]
    mem[mem[64]] = 32
    _1098 = mem[_657]
    mem[mem[64] + 32] = mem[_657]
    idx = 0
    s = mem[64] + 64
    t = _657 + 32
    while idx < _1098:
        _1204 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_1204 + 44 len 20]
        mem[s + 64] = mem[_1204 + 64]
        mem[s + 96] = mem[_1204 + 108 len 20]
        mem[s + 128] = mem[_1204 + 128]
        mem[s + 160] = mem[_1204 + 160]
        mem[s + 192] = mem[_1204 + 192]
        mem[s + 224] = mem[_1204 + 224]
        mem[s + 256] = bool(mem[_1204 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1094 + (288 * _1098) + -mem[64] + 64
}

function sub_c4ede65b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if stor258[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor258[address(arg1)].field_0
    if not stor258[address(arg1)].field_0:
        mem[0] = address(arg1)
        mem[32] = 258
        if var35002 < var35001:
            if var41001 < stor[var41002]:
                mem[0] = var45001
                mem[32] = 261
                mem[64] = (32 * stor258[address(arg1)].field_0) + 416
                mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[var45001].field_0
                mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                s = var45001
                idx = var45008
                while idx < stor258[address(arg1)].field_0:
                    mem[(32 * idx) + 128] = (32 * stor258[address(arg1)].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 258
                    if idx + 1 < stor258[address(arg1)].field_0:
                        if idx + 1 >= stor258[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = stor258[address(arg1)][idx].field_512
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[stor258[address(arg1)][idx].field_512].field_0
                        mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        s = stor258[address(arg1)][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg3 > test266151307():
                        revert with 0, 65
                    _1222 = mem[64]
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
                                if idx >= mem[_1222]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1222 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                            else:
                                _1324 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_1324] = 0
                                mem[_1324 + 32] = 0
                                mem[_1324 + 64] = 0
                                mem[_1324 + 96] = 0
                                mem[_1324 + 128] = 0
                                mem[_1324 + 160] = 0
                                mem[_1324 + 192] = 0
                                mem[_1324 + 224] = 0
                                mem[_1324 + 256] = 0
                                if idx >= mem[_1222]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1222 + 32] = _1324
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 288
                            mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                            mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                            mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                            mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                            mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                            mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                            mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                            mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                            mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                            idx = idx + 1
                            continue 
                        _1309 = mem[64]
                        mem[mem[64]] = 32
                        _1310 = mem[_1222]
                        mem[mem[64] + 32] = mem[_1222]
                        idx = 0
                        t = mem[64] + 64
                        u = _1222 + 32
                        while idx < _1310:
                            _1393 = mem[u]
                            mem[t] = mem[mem[u]]
                            mem[t + 32] = mem[_1393 + 44 len 20]
                            mem[t + 64] = mem[_1393 + 64]
                            mem[t + 96] = mem[_1393 + 108 len 20]
                            mem[t + 128] = mem[_1393 + 128]
                            mem[t + 160] = mem[_1393 + 160]
                            mem[t + 192] = mem[_1393 + 192]
                            mem[t + 224] = mem[_1393 + 224]
                            mem[t + 256] = bool(mem[_1393 + 256])
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 288
                            mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                            mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                            mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                            mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                            mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                            mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                            mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                            mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                            mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                            idx = idx + 1
                            t = t + 288
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1309 + (288 * _1310) + -mem[64] + 64
                    mem[64] = _1222 + (32 * arg3) + 320
                    mem[_1222 + (32 * arg3) + 32] = 0
                    mem[_1222 + (32 * arg3) + 64] = 0
                    mem[_1222 + (32 * arg3) + 96] = 0
                    mem[_1222 + (32 * arg3) + 128] = 0
                    mem[_1222 + (32 * arg3) + 160] = 0
                    mem[_1222 + (32 * arg3) + 192] = 0
                    mem[_1222 + (32 * arg3) + 224] = 0
                    mem[_1222 + (32 * arg3) + 256] = 0
                    mem[_1222 + (32 * arg3) + 288] = 0
                    mem[var51001] = _1222 + (32 * arg3) + 32
                    t = var51001
                    idx = var51002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        mem[64] = mem[64] + 288
                        mem[_1222 + (32 * arg3) + 32] = 0
                        mem[_1222 + (32 * arg3) + 64] = 0
                        mem[_1222 + (32 * arg3) + 96] = 0
                        mem[_1222 + (32 * arg3) + 128] = 0
                        mem[_1222 + (32 * arg3) + 160] = 0
                        mem[_1222 + (32 * arg3) + 192] = 0
                        mem[_1222 + (32 * arg3) + 224] = 0
                        mem[_1222 + (32 * arg3) + 256] = 0
                        mem[_1222 + (32 * arg3) + 288] = 0
                        mem[t + 32] = _1222 + (32 * arg3) + 32
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
                            if idx >= mem[_1222]:
                                revert with 0, 50
                            mem[(32 * idx) + _1222 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1496 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1496] = 0
                            mem[_1496 + 32] = 0
                            mem[_1496 + 64] = 0
                            mem[_1496 + 96] = 0
                            mem[_1496 + 128] = 0
                            mem[_1496 + 160] = 0
                            mem[_1496 + 192] = 0
                            mem[_1496 + 224] = 0
                            mem[_1496 + 256] = 0
                            if idx >= mem[_1222]:
                                revert with 0, 50
                            mem[(32 * idx) + _1222 + 32] = _1496
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        idx = idx + 1
                        continue 
                    _1469 = mem[64]
                    mem[mem[64]] = 32
                    _1471 = mem[_1222]
                    mem[mem[64] + 32] = mem[_1222]
                    idx = 0
                    t = mem[64] + 64
                    u = _1222 + 32
                    while idx < _1471:
                        _1525 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1525 + 44 len 20]
                        mem[t + 64] = mem[_1525 + 64]
                        mem[t + 96] = mem[_1525 + 108 len 20]
                        mem[t + 128] = mem[_1525 + 128]
                        mem[t + 160] = mem[_1525 + 160]
                        mem[t + 192] = mem[_1525 + 192]
                        mem[t + 224] = mem[_1525 + 224]
                        mem[t + 256] = bool(mem[_1525 + 256])
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor258[address(arg1)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor258[address(arg1)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor258[address(arg1)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor258[address(arg1)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor258[address(arg1)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor258[address(arg1)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor258[address(arg1)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor258[address(arg1)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor258[address(arg1)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1469 + (288 * _1471) + -mem[64] + 64
            revert with 0, 50
        if arg3 > test266151307():
            revert with 0, 65
        mem[(32 * stor258[address(arg1)].field_0) + 128] = arg3
        mem[64] = (32 * stor258[address(arg1)].field_0) + (32 * arg3) + 160
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
                    if idx >= mem[(32 * stor258[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor258[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
                else:
                    _535 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_535] = 0
                    mem[_535 + 32] = 0
                    mem[_535 + 64] = 0
                    mem[_535 + 96] = 0
                    mem[_535 + 128] = 0
                    mem[_535 + 160] = 0
                    mem[_535 + 192] = 0
                    mem[_535 + 224] = 0
                    mem[_535 + 256] = 0
                    if idx >= mem[(32 * stor258[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor258[address(arg1)].field_0) + 160] = _535
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _512 = mem[64]
            mem[mem[64]] = 32
            _514 = mem[(32 * stor258[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor258[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor258[address(arg1)].field_0) + 160
            while idx < _514:
                _641 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_641 + 44 len 20]
                mem[s + 64] = mem[_641 + 64]
                mem[s + 96] = mem[_641 + 108 len 20]
                mem[s + 128] = mem[_641 + 128]
                mem[s + 160] = mem[_641 + 160]
                mem[s + 192] = mem[_641 + 192]
                mem[s + 224] = mem[_641 + 224]
                mem[s + 256] = bool(mem[_641 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _512 + (288 * _514) + -mem[64] + 64
        mem[64] = (32 * stor258[address(arg1)].field_0) + (32 * arg3) + 448
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 160] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 192] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 224] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 256] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 288] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 320] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 352] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 384] = 0
        mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 416] = 0
        mem[var31001] = (32 * stor258[address(arg1)].field_0) + (32 * arg3) + 160
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 160] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 192] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 224] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 256] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 288] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 320] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 352] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 384] = 0
            mem[(32 * stor258[address(arg1)].field_0) + (32 * arg3) + 416] = 0
            mem[s + 32] = (32 * stor258[address(arg1)].field_0) + (32 * arg3) + 160
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
                if idx >= mem[(32 * stor258[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor258[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _842 = mem[64]
                mem[64] = mem[64] + 288
                mem[_842] = 0
                mem[_842 + 32] = 0
                mem[_842 + 64] = 0
                mem[_842 + 96] = 0
                mem[_842 + 128] = 0
                mem[_842 + 160] = 0
                mem[_842 + 192] = 0
                mem[_842 + 224] = 0
                mem[_842 + 256] = 0
                if idx >= mem[(32 * stor258[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor258[address(arg1)].field_0) + 160] = _842
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _808 = mem[64]
        mem[mem[64]] = 32
        _814 = mem[(32 * stor258[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor258[address(arg1)].field_0) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * stor258[address(arg1)].field_0) + 160
        while idx < _814:
            _956 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_956 + 44 len 20]
            mem[s + 64] = mem[_956 + 64]
            mem[s + 96] = mem[_956 + 108 len 20]
            mem[s + 128] = mem[_956 + 128]
            mem[s + 160] = mem[_956 + 160]
            mem[s + 192] = mem[_956 + 192]
            mem[s + 224] = mem[_956 + 224]
            mem[s + 256] = bool(mem[_956 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _808 + (288 * _814) + -mem[64] + 64
    mem[64] = (32 * stor258[address(arg1)].field_0) + 416
    mem[(32 * stor258[address(arg1)].field_0) + 128] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 160] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 192] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 224] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 256] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 288] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 320] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 352] = 0
    mem[(32 * stor258[address(arg1)].field_0) + 384] = 0
    mem[var18001] = (32 * stor258[address(arg1)].field_0) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor258[address(arg1)].field_0) + 128] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 160] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 192] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 224] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 256] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 288] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 320] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 352] = 0
        mem[(32 * stor258[address(arg1)].field_0) + 384] = 0
        mem[s + 32] = (32 * stor258[address(arg1)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = address(arg1)
    mem[32] = 258
    if var42002 < var42001:
        if var48001 < stor[var48002]:
            mem[0] = var52001
            mem[32] = 261
            _1391 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1391] = sub_8dd3c719[var52001].field_0
            mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
            mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
            mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
            mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
            mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
            mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
            mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
            mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
            _1392 = mem[96]
            s = var52001
            idx = var52008
            while idx < _1392:
                mem[(32 * idx) + 128] = _1391
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 258
                if idx + 1 < stor258[address(arg1)].field_0:
                    if idx + 1 >= stor258[address(arg1)].field_0:
                        revert with 0, 50
                    mem[0] = stor258[address(arg1)][idx].field_512
                    mem[32] = 261
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_8dd3c719[stor258[address(arg1)][idx].field_512].field_0
                    mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    s = stor258[address(arg1)][idx].field_256
                    idx = idx + 1
                    continue 
                if arg3 > test266151307():
                    revert with 0, 65
                _1422 = mem[64]
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
                            if idx >= mem[_1422]:
                                revert with 0, 50
                            mem[(32 * idx) + _1422 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                        else:
                            _1498 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1498] = 0
                            mem[_1498 + 32] = 0
                            mem[_1498 + 64] = 0
                            mem[_1498 + 96] = 0
                            mem[_1498 + 128] = 0
                            mem[_1498 + 160] = 0
                            mem[_1498 + 192] = 0
                            mem[_1498 + 224] = 0
                            mem[_1498 + 256] = 0
                            if idx >= mem[_1422]:
                                revert with 0, 50
                            mem[(32 * idx) + _1422 + 32] = _1498
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        _1391 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1391] = sub_8dd3c719[s].field_0
                        mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                        mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                        mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                        mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                        mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                        mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                        mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                        mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                        idx = idx + 1
                        continue 
                    _1470 = mem[64]
                    mem[mem[64]] = 32
                    _1472 = mem[_1422]
                    mem[mem[64] + 32] = mem[_1422]
                    idx = 0
                    t = mem[64] + 64
                    u = _1422 + 32
                    while idx < _1472:
                        _1526 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1526 + 44 len 20]
                        mem[t + 64] = mem[_1526 + 64]
                        mem[t + 96] = mem[_1526 + 108 len 20]
                        mem[t + 128] = mem[_1526 + 128]
                        mem[t + 160] = mem[_1526 + 160]
                        mem[t + 192] = mem[_1526 + 192]
                        mem[t + 224] = mem[_1526 + 224]
                        mem[t + 256] = bool(mem[_1526 + 256])
                        mem[0] = s
                        mem[32] = 261
                        _1391 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1391] = sub_8dd3c719[s].field_0
                        mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                        mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                        mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                        mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                        mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                        mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                        mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                        mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1470 + (288 * _1472) + -mem[64] + 64
                mem[64] = _1422 + (32 * arg3) + 320
                mem[_1422 + (32 * arg3) + 32] = 0
                mem[_1422 + (32 * arg3) + 64] = 0
                mem[_1422 + (32 * arg3) + 96] = 0
                mem[_1422 + (32 * arg3) + 128] = 0
                mem[_1422 + (32 * arg3) + 160] = 0
                mem[_1422 + (32 * arg3) + 192] = 0
                mem[_1422 + (32 * arg3) + 224] = 0
                mem[_1422 + (32 * arg3) + 256] = 0
                mem[_1422 + (32 * arg3) + 288] = 0
                mem[var58001] = _1422 + (32 * arg3) + 32
                t = var58001
                idx = var58002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 261
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_8dd3c719[s].field_0
                    mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    mem[64] = mem[64] + 288
                    mem[_1422 + (32 * arg3) + 32] = 0
                    mem[_1422 + (32 * arg3) + 64] = 0
                    mem[_1422 + (32 * arg3) + 96] = 0
                    mem[_1422 + (32 * arg3) + 128] = 0
                    mem[_1422 + (32 * arg3) + 160] = 0
                    mem[_1422 + (32 * arg3) + 192] = 0
                    mem[_1422 + (32 * arg3) + 224] = 0
                    mem[_1422 + (32 * arg3) + 256] = 0
                    mem[_1422 + (32 * arg3) + 288] = 0
                    mem[t + 32] = _1422 + (32 * arg3) + 32
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
                        if idx >= mem[_1422]:
                            revert with 0, 50
                        mem[(32 * idx) + _1422 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
                    else:
                        _1580 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1580] = 0
                        mem[_1580 + 32] = 0
                        mem[_1580 + 64] = 0
                        mem[_1580 + 96] = 0
                        mem[_1580 + 128] = 0
                        mem[_1580 + 160] = 0
                        mem[_1580 + 192] = 0
                        mem[_1580 + 224] = 0
                        mem[_1580 + 256] = 0
                        if idx >= mem[_1422]:
                            revert with 0, 50
                        mem[(32 * idx) + _1422 + 32] = _1580
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 261
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_8dd3c719[s].field_0
                    mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    idx = idx + 1
                    continue 
                _1567 = mem[64]
                mem[mem[64]] = 32
                _1568 = mem[_1422]
                mem[mem[64] + 32] = mem[_1422]
                idx = 0
                t = mem[64] + 64
                u = _1422 + 32
                while idx < _1568:
                    _1585 = mem[u]
                    mem[t] = mem[mem[u]]
                    mem[t + 32] = mem[_1585 + 44 len 20]
                    mem[t + 64] = mem[_1585 + 64]
                    mem[t + 96] = mem[_1585 + 108 len 20]
                    mem[t + 128] = mem[_1585 + 128]
                    mem[t + 160] = mem[_1585 + 160]
                    mem[t + 192] = mem[_1585 + 192]
                    mem[t + 224] = mem[_1585 + 224]
                    mem[t + 256] = bool(mem[_1585 + 256])
                    mem[0] = s
                    mem[32] = 261
                    _1391 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1391] = sub_8dd3c719[s].field_0
                    mem[_1391 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1391 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1391 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1391 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1391 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1391 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1391 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1391 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    idx = idx + 1
                    t = t + 288
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _1567 + (288 * _1568) + -mem[64] + 64
        revert with 0, 50
    if arg3 > test266151307():
        revert with 0, 65
    _657 = mem[64]
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
                if idx >= mem[_657]:
                    revert with 0, 50
                mem[(32 * idx) + _657 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
            else:
                _845 = mem[64]
                mem[64] = mem[64] + 288
                mem[_845] = 0
                mem[_845 + 32] = 0
                mem[_845 + 64] = 0
                mem[_845 + 96] = 0
                mem[_845 + 128] = 0
                mem[_845 + 160] = 0
                mem[_845 + 192] = 0
                mem[_845 + 224] = 0
                mem[_845 + 256] = 0
                if idx >= mem[_657]:
                    revert with 0, 50
                mem[(32 * idx) + _657 + 32] = _845
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _812 = mem[64]
        mem[mem[64]] = 32
        _815 = mem[_657]
        mem[mem[64] + 32] = mem[_657]
        idx = 0
        s = mem[64] + 64
        t = _657 + 32
        while idx < _815:
            _957 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_957 + 44 len 20]
            mem[s + 64] = mem[_957 + 64]
            mem[s + 96] = mem[_957 + 108 len 20]
            mem[s + 128] = mem[_957 + 128]
            mem[s + 160] = mem[_957 + 160]
            mem[s + 192] = mem[_957 + 192]
            mem[s + 224] = mem[_957 + 224]
            mem[s + 256] = bool(mem[_957 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _812 + (288 * _815) + -mem[64] + 64
    mem[64] = _657 + (32 * arg3) + 320
    mem[_657 + (32 * arg3) + 32] = 0
    mem[_657 + (32 * arg3) + 64] = 0
    mem[_657 + (32 * arg3) + 96] = 0
    mem[_657 + (32 * arg3) + 128] = 0
    mem[_657 + (32 * arg3) + 160] = 0
    mem[_657 + (32 * arg3) + 192] = 0
    mem[_657 + (32 * arg3) + 224] = 0
    mem[_657 + (32 * arg3) + 256] = 0
    mem[_657 + (32 * arg3) + 288] = 0
    mem[var38001] = _657 + (32 * arg3) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[_657 + (32 * arg3) + 32] = 0
        mem[_657 + (32 * arg3) + 64] = 0
        mem[_657 + (32 * arg3) + 96] = 0
        mem[_657 + (32 * arg3) + 128] = 0
        mem[_657 + (32 * arg3) + 160] = 0
        mem[_657 + (32 * arg3) + 192] = 0
        mem[_657 + (32 * arg3) + 224] = 0
        mem[_657 + (32 * arg3) + 256] = 0
        mem[_657 + (32 * arg3) + 288] = 0
        mem[s + 32] = _657 + (32 * arg3) + 32
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
            if idx >= mem[_657]:
                revert with 0, 50
            mem[(32 * idx) + _657 + 32] = mem[(32 * (arg2 * arg3) + idx) + 128]
        else:
            _1111 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1111] = 0
            mem[_1111 + 32] = 0
            mem[_1111 + 64] = 0
            mem[_1111 + 96] = 0
            mem[_1111 + 128] = 0
            mem[_1111 + 160] = 0
            mem[_1111 + 192] = 0
            mem[_1111 + 224] = 0
            mem[_1111 + 256] = 0
            if idx >= mem[_657]:
                revert with 0, 50
            mem[(32 * idx) + _657 + 32] = _1111
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1094 = mem[64]
    mem[mem[64]] = 32
    _1098 = mem[_657]
    mem[mem[64] + 32] = mem[_657]
    idx = 0
    s = mem[64] + 64
    t = _657 + 32
    while idx < _1098:
        _1204 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_1204 + 44 len 20]
        mem[s + 64] = mem[_1204 + 64]
        mem[s + 96] = mem[_1204 + 108 len 20]
        mem[s + 128] = mem[_1204 + 128]
        mem[s + 160] = mem[_1204 + 160]
        mem[s + 192] = mem[_1204 + 192]
        mem[s + 224] = mem[_1204 + 224]
        mem[s + 256] = bool(mem[_1204 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1094 + (288 * _1098) + -mem[64] + 64
}

function sub_e413e991(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 255)
    if stor255[arg1][address(arg2)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor255[arg1][address(arg2)].field_0
    if not stor255[arg1][address(arg2)].field_0:
        if var35002 < stor255[arg1][address(arg2)].field_0:
            if var41001 < stor255[arg1][address(arg2)].field_0:
                mem[0] = var45001
                mem[32] = 260
                mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + 416
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[var45001].field_0
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                s = var45001
                idx = var45008
                while idx < stor255[arg1][address(arg2)].field_0:
                    mem[(32 * idx) + 128] = (32 * stor255[arg1][address(arg2)].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    if idx + 1 < stor255[arg1][address(arg2)].field_0:
                        mem[0] = stor255[arg1][address(arg2)][idx].field_512
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[stor255[arg1][address(arg2)][idx].field_512].field_0
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        s = stor255[arg1][address(arg2)][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg4 > test266151307():
                        revert with 0, 65
                    _1175 = mem[64]
                    mem[mem[64]] = arg4
                    mem[64] = mem[64] + (32 * arg4) + 32
                    if not arg4:
                        idx = 0
                        while idx < arg4:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx < mem[96]:
                                if arg3 and arg4 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 * arg4 > !idx:
                                    revert with 0, 17
                                if (arg3 * arg4) + idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[_1175]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1175 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                            else:
                                _1276 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_1276] = 0
                                mem[_1276 + 32] = 0
                                mem[_1276 + 64] = 0
                                mem[_1276 + 96] = 0
                                mem[_1276 + 128] = 0
                                mem[_1276 + 160] = 0
                                mem[_1276 + 192] = 0
                                mem[_1276 + 224] = 0
                                mem[_1276 + 256] = 0
                                if idx >= mem[_1175]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1175 + 32] = _1276
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 260
                            mem[64] = mem[64] + 288
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                            idx = idx + 1
                            continue 
                        _1262 = mem[64]
                        mem[mem[64]] = 32
                        _1263 = mem[_1175]
                        mem[mem[64] + 32] = mem[_1175]
                        idx = 0
                        t = mem[64] + 64
                        u = _1175 + 32
                        while idx < _1263:
                            _1344 = mem[u]
                            mem[t] = mem[mem[u]]
                            mem[t + 32] = mem[_1344 + 44 len 20]
                            mem[t + 64] = mem[_1344 + 64]
                            mem[t + 96] = mem[_1344 + 108 len 20]
                            mem[t + 128] = mem[_1344 + 128]
                            mem[t + 160] = mem[_1344 + 160]
                            mem[t + 192] = mem[_1344 + 192]
                            mem[t + 224] = mem[_1344 + 224]
                            mem[t + 256] = bool(mem[_1344 + 256])
                            mem[0] = s
                            mem[32] = 260
                            mem[64] = mem[64] + 288
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                            mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                            idx = idx + 1
                            t = t + 288
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1262 + (288 * _1263) + -mem[64] + 64
                    mem[64] = _1175 + (32 * arg4) + 320
                    mem[_1175 + (32 * arg4) + 32] = 0
                    mem[_1175 + (32 * arg4) + 64] = 0
                    mem[_1175 + (32 * arg4) + 96] = 0
                    mem[_1175 + (32 * arg4) + 128] = 0
                    mem[_1175 + (32 * arg4) + 160] = 0
                    mem[_1175 + (32 * arg4) + 192] = 0
                    mem[_1175 + (32 * arg4) + 224] = 0
                    mem[_1175 + (32 * arg4) + 256] = 0
                    mem[_1175 + (32 * arg4) + 288] = 0
                    mem[var51001] = _1175 + (32 * arg4) + 32
                    t = var51001
                    idx = var51002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        mem[64] = mem[64] + 288
                        mem[_1175 + (32 * arg4) + 32] = 0
                        mem[_1175 + (32 * arg4) + 64] = 0
                        mem[_1175 + (32 * arg4) + 96] = 0
                        mem[_1175 + (32 * arg4) + 128] = 0
                        mem[_1175 + (32 * arg4) + 160] = 0
                        mem[_1175 + (32 * arg4) + 192] = 0
                        mem[_1175 + (32 * arg4) + 224] = 0
                        mem[_1175 + (32 * arg4) + 256] = 0
                        mem[_1175 + (32 * arg4) + 288] = 0
                        mem[t + 32] = _1175 + (32 * arg4) + 32
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < arg4:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx < mem[96]:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1175]:
                                revert with 0, 50
                            mem[(32 * idx) + _1175 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                        else:
                            _1445 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1445] = 0
                            mem[_1445 + 32] = 0
                            mem[_1445 + 64] = 0
                            mem[_1445 + 96] = 0
                            mem[_1445 + 128] = 0
                            mem[_1445 + 160] = 0
                            mem[_1445 + 192] = 0
                            mem[_1445 + 224] = 0
                            mem[_1445 + 256] = 0
                            if idx >= mem[_1175]:
                                revert with 0, 50
                            mem[(32 * idx) + _1175 + 32] = _1445
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        idx = idx + 1
                        continue 
                    _1418 = mem[64]
                    mem[mem[64]] = 32
                    _1420 = mem[_1175]
                    mem[mem[64] + 32] = mem[_1175]
                    idx = 0
                    t = mem[64] + 64
                    u = _1175 + 32
                    while idx < _1420:
                        _1474 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1474 + 44 len 20]
                        mem[t + 64] = mem[_1474 + 64]
                        mem[t + 96] = mem[_1474 + 108 len 20]
                        mem[t + 128] = mem[_1474 + 128]
                        mem[t + 160] = mem[_1474 + 160]
                        mem[t + 192] = mem[_1474 + 192]
                        mem[t + 224] = mem[_1474 + 224]
                        mem[t + 256] = bool(mem[_1474 + 256])
                        mem[0] = s
                        mem[32] = 260
                        mem[64] = mem[64] + 288
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = sub_4056639c[s].field_0
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = address(sub_4056639c[var45001].field_256)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = sub_4056639c[var45001].field_512
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = address(sub_4056639c[var45001].field_768)
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = sub_4056639c[var45001].field_1024
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = sub_4056639c[var45001].field_1280
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = sub_4056639c[var45001].field_1536
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = sub_4056639c[var45001].field_1792
                        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_4056639c[var45001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1418 + (288 * _1420) + -mem[64] + 64
            revert with 0, 50
        if arg4 > test266151307():
            revert with 0, 65
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = arg4
        mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 160
        if not arg4:
            idx = 0
            while idx < arg4:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx < mem[96]:
                    if arg3 and arg4 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg4 > !idx:
                        revert with 0, 17
                    if (arg3 * arg4) + idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor255[arg1][address(arg2)].field_0) + 160] = mem[(32 * (arg3 * arg4) + idx) + 128]
                else:
                    _512 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_512] = 0
                    mem[_512 + 32] = 0
                    mem[_512 + 64] = 0
                    mem[_512 + 96] = 0
                    mem[_512 + 128] = 0
                    mem[_512 + 160] = 0
                    mem[_512 + 192] = 0
                    mem[_512 + 224] = 0
                    mem[_512 + 256] = 0
                    if idx >= mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor255[arg1][address(arg2)].field_0) + 160] = _512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _489 = mem[64]
            mem[mem[64]] = 32
            _491 = mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor255[arg1][address(arg2)].field_0) + 160
            while idx < _491:
                _615 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_615 + 44 len 20]
                mem[s + 64] = mem[_615 + 64]
                mem[s + 96] = mem[_615 + 108 len 20]
                mem[s + 128] = mem[_615 + 128]
                mem[s + 160] = mem[_615 + 160]
                mem[s + 192] = mem[_615 + 192]
                mem[s + 224] = mem[_615 + 224]
                mem[s + 256] = bool(mem[_615 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _489 + (288 * _491) + -mem[64] + 64
        mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 448
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 160] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 192] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 224] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 256] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 288] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 320] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 352] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 384] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 416] = 0
        mem[var31001] = (32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 160
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 160] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 192] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 224] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 256] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 288] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 320] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 352] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 384] = 0
            mem[(32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 416] = 0
            mem[s + 32] = (32 * stor255[arg1][address(arg2)].field_0) + (32 * arg4) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg4:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx < mem[96]:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor255[arg1][address(arg2)].field_0) + 160] = mem[(32 * (arg3 * arg4) + idx) + 128]
            else:
                _811 = mem[64]
                mem[64] = mem[64] + 288
                mem[_811] = 0
                mem[_811 + 32] = 0
                mem[_811 + 64] = 0
                mem[_811 + 96] = 0
                mem[_811 + 128] = 0
                mem[_811 + 160] = 0
                mem[_811 + 192] = 0
                mem[_811 + 224] = 0
                mem[_811 + 256] = 0
                if idx >= mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor255[arg1][address(arg2)].field_0) + 160] = _811
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _777 = mem[64]
        mem[mem[64]] = 32
        _783 = mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor255[arg1][address(arg2)].field_0) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * stor255[arg1][address(arg2)].field_0) + 160
        while idx < _783:
            _921 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_921 + 44 len 20]
            mem[s + 64] = mem[_921 + 64]
            mem[s + 96] = mem[_921 + 108 len 20]
            mem[s + 128] = mem[_921 + 128]
            mem[s + 160] = mem[_921 + 160]
            mem[s + 192] = mem[_921 + 192]
            mem[s + 224] = mem[_921 + 224]
            mem[s + 256] = bool(mem[_921 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _777 + (288 * _783) + -mem[64] + 64
    mem[64] = (32 * stor255[arg1][address(arg2)].field_0) + 416
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = 0
    mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = 0
    mem[var18001] = (32 * stor255[arg1][address(arg2)].field_0) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 128] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 160] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 192] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 224] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 256] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 288] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 320] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 352] = 0
        mem[(32 * stor255[arg1][address(arg2)].field_0) + 384] = 0
        mem[s + 32] = (32 * stor255[arg1][address(arg2)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if var42002 < stor255[arg1][address(arg2)].field_0:
        if var48001 < stor255[arg1][address(arg2)].field_0:
            mem[0] = var52001
            mem[32] = 260
            _1342 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1342] = sub_4056639c[var52001].field_0
            mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
            mem[_1342 + 64] = sub_4056639c[var52001].field_512
            mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
            mem[_1342 + 128] = sub_4056639c[var52001].field_1024
            mem[_1342 + 160] = sub_4056639c[var52001].field_1280
            mem[_1342 + 192] = sub_4056639c[var52001].field_1536
            mem[_1342 + 224] = sub_4056639c[var52001].field_1792
            mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
            _1343 = mem[96]
            s = var52001
            idx = var52008
            while idx < _1343:
                mem[(32 * idx) + 128] = _1342
                if idx == -1:
                    revert with 0, 17
                if idx + 1 < stor255[arg1][address(arg2)].field_0:
                    mem[0] = stor255[arg1][address(arg2)][idx].field_512
                    mem[32] = 260
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_4056639c[stor255[arg1][address(arg2)][idx].field_512].field_0
                    mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1342 + 64] = sub_4056639c[var52001].field_512
                    mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    s = stor255[arg1][address(arg2)][idx].field_256
                    idx = idx + 1
                    continue 
                if arg4 > test266151307():
                    revert with 0, 65
                _1371 = mem[64]
                mem[mem[64]] = arg4
                mem[64] = mem[64] + (32 * arg4) + 32
                if not arg4:
                    idx = 0
                    while idx < arg4:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx < mem[96]:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1371]:
                                revert with 0, 50
                            mem[(32 * idx) + _1371 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                        else:
                            _1447 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1447] = 0
                            mem[_1447 + 32] = 0
                            mem[_1447 + 64] = 0
                            mem[_1447 + 96] = 0
                            mem[_1447 + 128] = 0
                            mem[_1447 + 160] = 0
                            mem[_1447 + 192] = 0
                            mem[_1447 + 224] = 0
                            mem[_1447 + 256] = 0
                            if idx >= mem[_1371]:
                                revert with 0, 50
                            mem[(32 * idx) + _1371 + 32] = _1447
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 260
                        _1342 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1342] = sub_4056639c[s].field_0
                        mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                        mem[_1342 + 64] = sub_4056639c[var52001].field_512
                        mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                        mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                        mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                        mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                        mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                        mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                        idx = idx + 1
                        continue 
                    _1419 = mem[64]
                    mem[mem[64]] = 32
                    _1421 = mem[_1371]
                    mem[mem[64] + 32] = mem[_1371]
                    idx = 0
                    t = mem[64] + 64
                    u = _1371 + 32
                    while idx < _1421:
                        _1475 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1475 + 44 len 20]
                        mem[t + 64] = mem[_1475 + 64]
                        mem[t + 96] = mem[_1475 + 108 len 20]
                        mem[t + 128] = mem[_1475 + 128]
                        mem[t + 160] = mem[_1475 + 160]
                        mem[t + 192] = mem[_1475 + 192]
                        mem[t + 224] = mem[_1475 + 224]
                        mem[t + 256] = bool(mem[_1475 + 256])
                        mem[0] = s
                        mem[32] = 260
                        _1342 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1342] = sub_4056639c[s].field_0
                        mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                        mem[_1342 + 64] = sub_4056639c[var52001].field_512
                        mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                        mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                        mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                        mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                        mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                        mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1419 + (288 * _1421) + -mem[64] + 64
                mem[64] = _1371 + (32 * arg4) + 320
                mem[_1371 + (32 * arg4) + 32] = 0
                mem[_1371 + (32 * arg4) + 64] = 0
                mem[_1371 + (32 * arg4) + 96] = 0
                mem[_1371 + (32 * arg4) + 128] = 0
                mem[_1371 + (32 * arg4) + 160] = 0
                mem[_1371 + (32 * arg4) + 192] = 0
                mem[_1371 + (32 * arg4) + 224] = 0
                mem[_1371 + (32 * arg4) + 256] = 0
                mem[_1371 + (32 * arg4) + 288] = 0
                mem[var58001] = _1371 + (32 * arg4) + 32
                t = var58001
                idx = var58002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 260
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_4056639c[s].field_0
                    mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1342 + 64] = sub_4056639c[var52001].field_512
                    mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    mem[64] = mem[64] + 288
                    mem[_1371 + (32 * arg4) + 32] = 0
                    mem[_1371 + (32 * arg4) + 64] = 0
                    mem[_1371 + (32 * arg4) + 96] = 0
                    mem[_1371 + (32 * arg4) + 128] = 0
                    mem[_1371 + (32 * arg4) + 160] = 0
                    mem[_1371 + (32 * arg4) + 192] = 0
                    mem[_1371 + (32 * arg4) + 224] = 0
                    mem[_1371 + (32 * arg4) + 256] = 0
                    mem[_1371 + (32 * arg4) + 288] = 0
                    mem[t + 32] = _1371 + (32 * arg4) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < arg4:
                    if arg3 and arg4 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg4 > !idx:
                        revert with 0, 17
                    if (arg3 * arg4) + idx < mem[96]:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[_1371]:
                            revert with 0, 50
                        mem[(32 * idx) + _1371 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                    else:
                        _1529 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1529] = 0
                        mem[_1529 + 32] = 0
                        mem[_1529 + 64] = 0
                        mem[_1529 + 96] = 0
                        mem[_1529 + 128] = 0
                        mem[_1529 + 160] = 0
                        mem[_1529 + 192] = 0
                        mem[_1529 + 224] = 0
                        mem[_1529 + 256] = 0
                        if idx >= mem[_1371]:
                            revert with 0, 50
                        mem[(32 * idx) + _1371 + 32] = _1529
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 260
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_4056639c[s].field_0
                    mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1342 + 64] = sub_4056639c[var52001].field_512
                    mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    idx = idx + 1
                    continue 
                _1516 = mem[64]
                mem[mem[64]] = 32
                _1517 = mem[_1371]
                mem[mem[64] + 32] = mem[_1371]
                idx = 0
                t = mem[64] + 64
                u = _1371 + 32
                while idx < _1517:
                    _1534 = mem[u]
                    mem[t] = mem[mem[u]]
                    mem[t + 32] = mem[_1534 + 44 len 20]
                    mem[t + 64] = mem[_1534 + 64]
                    mem[t + 96] = mem[_1534 + 108 len 20]
                    mem[t + 128] = mem[_1534 + 128]
                    mem[t + 160] = mem[_1534 + 160]
                    mem[t + 192] = mem[_1534 + 192]
                    mem[t + 224] = mem[_1534 + 224]
                    mem[t + 256] = bool(mem[_1534 + 256])
                    mem[0] = s
                    mem[32] = 260
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_4056639c[s].field_0
                    mem[_1342 + 32] = address(sub_4056639c[var52001].field_256)
                    mem[_1342 + 64] = sub_4056639c[var52001].field_512
                    mem[_1342 + 96] = address(sub_4056639c[var52001].field_768)
                    mem[_1342 + 128] = sub_4056639c[var52001].field_1024
                    mem[_1342 + 160] = sub_4056639c[var52001].field_1280
                    mem[_1342 + 192] = sub_4056639c[var52001].field_1536
                    mem[_1342 + 224] = sub_4056639c[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_4056639c[var52001].field_2048))
                    idx = idx + 1
                    t = t + 288
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _1516 + (288 * _1517) + -mem[64] + 64
        revert with 0, 50
    if arg4 > test266151307():
        revert with 0, 65
    _630 = mem[64]
    mem[mem[64]] = arg4
    mem[64] = mem[64] + (32 * arg4) + 32
    if not arg4:
        idx = 0
        while idx < arg4:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx < mem[96]:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_630]:
                    revert with 0, 50
                mem[(32 * idx) + _630 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
            else:
                _813 = mem[64]
                mem[64] = mem[64] + 288
                mem[_813] = 0
                mem[_813 + 32] = 0
                mem[_813 + 64] = 0
                mem[_813 + 96] = 0
                mem[_813 + 128] = 0
                mem[_813 + 160] = 0
                mem[_813 + 192] = 0
                mem[_813 + 224] = 0
                mem[_813 + 256] = 0
                if idx >= mem[_630]:
                    revert with 0, 50
                mem[(32 * idx) + _630 + 32] = _813
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _781 = mem[64]
        mem[mem[64]] = 32
        _784 = mem[_630]
        mem[mem[64] + 32] = mem[_630]
        idx = 0
        s = mem[64] + 64
        t = _630 + 32
        while idx < _784:
            _922 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_922 + 44 len 20]
            mem[s + 64] = mem[_922 + 64]
            mem[s + 96] = mem[_922 + 108 len 20]
            mem[s + 128] = mem[_922 + 128]
            mem[s + 160] = mem[_922 + 160]
            mem[s + 192] = mem[_922 + 192]
            mem[s + 224] = mem[_922 + 224]
            mem[s + 256] = bool(mem[_922 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _781 + (288 * _784) + -mem[64] + 64
    mem[64] = _630 + (32 * arg4) + 320
    mem[_630 + (32 * arg4) + 32] = 0
    mem[_630 + (32 * arg4) + 64] = 0
    mem[_630 + (32 * arg4) + 96] = 0
    mem[_630 + (32 * arg4) + 128] = 0
    mem[_630 + (32 * arg4) + 160] = 0
    mem[_630 + (32 * arg4) + 192] = 0
    mem[_630 + (32 * arg4) + 224] = 0
    mem[_630 + (32 * arg4) + 256] = 0
    mem[_630 + (32 * arg4) + 288] = 0
    mem[var38001] = _630 + (32 * arg4) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[_630 + (32 * arg4) + 32] = 0
        mem[_630 + (32 * arg4) + 64] = 0
        mem[_630 + (32 * arg4) + 96] = 0
        mem[_630 + (32 * arg4) + 128] = 0
        mem[_630 + (32 * arg4) + 160] = 0
        mem[_630 + (32 * arg4) + 192] = 0
        mem[_630 + (32 * arg4) + 224] = 0
        mem[_630 + (32 * arg4) + 256] = 0
        mem[_630 + (32 * arg4) + 288] = 0
        mem[s + 32] = _630 + (32 * arg4) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg4:
        if arg3 and arg4 > -1 / arg3:
            revert with 0, 17
        if arg3 * arg4 > !idx:
            revert with 0, 17
        if (arg3 * arg4) + idx < mem[96]:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_630]:
                revert with 0, 50
            mem[(32 * idx) + _630 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
        else:
            _1071 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1071] = 0
            mem[_1071 + 32] = 0
            mem[_1071 + 64] = 0
            mem[_1071 + 96] = 0
            mem[_1071 + 128] = 0
            mem[_1071 + 160] = 0
            mem[_1071 + 192] = 0
            mem[_1071 + 224] = 0
            mem[_1071 + 256] = 0
            if idx >= mem[_630]:
                revert with 0, 50
            mem[(32 * idx) + _630 + 32] = _1071
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1055 = mem[64]
    mem[mem[64]] = 32
    _1059 = mem[_630]
    mem[mem[64] + 32] = mem[_630]
    idx = 0
    s = mem[64] + 64
    t = _630 + 32
    while idx < _1059:
        _1161 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_1161 + 44 len 20]
        mem[s + 64] = mem[_1161 + 64]
        mem[s + 96] = mem[_1161 + 108 len 20]
        mem[s + 128] = mem[_1161 + 128]
        mem[s + 160] = mem[_1161 + 160]
        mem[s + 192] = mem[_1161 + 192]
        mem[s + 224] = mem[_1161 + 224]
        mem[s + 256] = bool(mem[_1161 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1055 + (288 * _1059) + -mem[64] + 64
}

function sub_ebe28e1e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 256)
    if stor256[arg1][address(arg2)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor256[arg1][address(arg2)].field_0
    if not stor256[arg1][address(arg2)].field_0:
        if var35002 < stor256[arg1][address(arg2)].field_0:
            if var41001 < stor256[arg1][address(arg2)].field_0:
                mem[0] = var45001
                mem[32] = 261
                mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + 416
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[var45001].field_0
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                s = var45001
                idx = var45008
                while idx < stor256[arg1][address(arg2)].field_0:
                    mem[(32 * idx) + 128] = (32 * stor256[arg1][address(arg2)].field_0) + 128
                    if idx == -1:
                        revert with 0, 17
                    if idx + 1 < stor256[arg1][address(arg2)].field_0:
                        mem[0] = stor256[arg1][address(arg2)][idx].field_512
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[stor256[arg1][address(arg2)][idx].field_512].field_0
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        s = stor256[arg1][address(arg2)][idx].field_256
                        idx = idx + 1
                        continue 
                    if arg4 > test266151307():
                        revert with 0, 65
                    _1175 = mem[64]
                    mem[mem[64]] = arg4
                    mem[64] = mem[64] + (32 * arg4) + 32
                    if not arg4:
                        idx = 0
                        while idx < arg4:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx < mem[96]:
                                if arg3 and arg4 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 * arg4 > !idx:
                                    revert with 0, 17
                                if (arg3 * arg4) + idx >= mem[96]:
                                    revert with 0, 50
                                if idx >= mem[_1175]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1175 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                            else:
                                _1276 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_1276] = 0
                                mem[_1276 + 32] = 0
                                mem[_1276 + 64] = 0
                                mem[_1276 + 96] = 0
                                mem[_1276 + 128] = 0
                                mem[_1276 + 160] = 0
                                mem[_1276 + 192] = 0
                                mem[_1276 + 224] = 0
                                mem[_1276 + 256] = 0
                                if idx >= mem[_1175]:
                                    revert with 0, 50
                                mem[(32 * idx) + _1175 + 32] = _1276
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 288
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                            idx = idx + 1
                            continue 
                        _1262 = mem[64]
                        mem[mem[64]] = 32
                        _1263 = mem[_1175]
                        mem[mem[64] + 32] = mem[_1175]
                        idx = 0
                        t = mem[64] + 64
                        u = _1175 + 32
                        while idx < _1263:
                            _1344 = mem[u]
                            mem[t] = mem[mem[u]]
                            mem[t + 32] = mem[_1344 + 44 len 20]
                            mem[t + 64] = mem[_1344 + 64]
                            mem[t + 96] = mem[_1344 + 108 len 20]
                            mem[t + 128] = mem[_1344 + 128]
                            mem[t + 160] = mem[_1344 + 160]
                            mem[t + 192] = mem[_1344 + 192]
                            mem[t + 224] = mem[_1344 + 224]
                            mem[t + 256] = bool(mem[_1344 + 256])
                            mem[0] = s
                            mem[32] = 261
                            mem[64] = mem[64] + 288
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                            mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                            idx = idx + 1
                            t = t + 288
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1262 + (288 * _1263) + -mem[64] + 64
                    mem[64] = _1175 + (32 * arg4) + 320
                    mem[_1175 + (32 * arg4) + 32] = 0
                    mem[_1175 + (32 * arg4) + 64] = 0
                    mem[_1175 + (32 * arg4) + 96] = 0
                    mem[_1175 + (32 * arg4) + 128] = 0
                    mem[_1175 + (32 * arg4) + 160] = 0
                    mem[_1175 + (32 * arg4) + 192] = 0
                    mem[_1175 + (32 * arg4) + 224] = 0
                    mem[_1175 + (32 * arg4) + 256] = 0
                    mem[_1175 + (32 * arg4) + 288] = 0
                    mem[var51001] = _1175 + (32 * arg4) + 32
                    t = var51001
                    idx = var51002
                    while idx - 1:
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        mem[64] = mem[64] + 288
                        mem[_1175 + (32 * arg4) + 32] = 0
                        mem[_1175 + (32 * arg4) + 64] = 0
                        mem[_1175 + (32 * arg4) + 96] = 0
                        mem[_1175 + (32 * arg4) + 128] = 0
                        mem[_1175 + (32 * arg4) + 160] = 0
                        mem[_1175 + (32 * arg4) + 192] = 0
                        mem[_1175 + (32 * arg4) + 224] = 0
                        mem[_1175 + (32 * arg4) + 256] = 0
                        mem[_1175 + (32 * arg4) + 288] = 0
                        mem[t + 32] = _1175 + (32 * arg4) + 32
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < arg4:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx < mem[96]:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1175]:
                                revert with 0, 50
                            mem[(32 * idx) + _1175 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                        else:
                            _1445 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1445] = 0
                            mem[_1445 + 32] = 0
                            mem[_1445 + 64] = 0
                            mem[_1445 + 96] = 0
                            mem[_1445 + 128] = 0
                            mem[_1445 + 160] = 0
                            mem[_1445 + 192] = 0
                            mem[_1445 + 224] = 0
                            mem[_1445 + 256] = 0
                            if idx >= mem[_1175]:
                                revert with 0, 50
                            mem[(32 * idx) + _1175 + 32] = _1445
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        idx = idx + 1
                        continue 
                    _1418 = mem[64]
                    mem[mem[64]] = 32
                    _1420 = mem[_1175]
                    mem[mem[64] + 32] = mem[_1175]
                    idx = 0
                    t = mem[64] + 64
                    u = _1175 + 32
                    while idx < _1420:
                        _1474 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1474 + 44 len 20]
                        mem[t + 64] = mem[_1474 + 64]
                        mem[t + 96] = mem[_1474 + 108 len 20]
                        mem[t + 128] = mem[_1474 + 128]
                        mem[t + 160] = mem[_1474 + 160]
                        mem[t + 192] = mem[_1474 + 192]
                        mem[t + 224] = mem[_1474 + 224]
                        mem[t + 256] = bool(mem[_1474 + 256])
                        mem[0] = s
                        mem[32] = 261
                        mem[64] = mem[64] + 288
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = sub_8dd3c719[s].field_0
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = address(sub_8dd3c719[var45001].field_256)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = sub_8dd3c719[var45001].field_512
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = address(sub_8dd3c719[var45001].field_768)
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = sub_8dd3c719[var45001].field_1024
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = sub_8dd3c719[var45001].field_1280
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = sub_8dd3c719[var45001].field_1536
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = sub_8dd3c719[var45001].field_1792
                        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = bool(uint8(sub_8dd3c719[var45001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1418 + (288 * _1420) + -mem[64] + 64
            revert with 0, 50
        if arg4 > test266151307():
            revert with 0, 65
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = arg4
        mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 160
        if not arg4:
            idx = 0
            while idx < arg4:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx < mem[96]:
                    if arg3 and arg4 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg4 > !idx:
                        revert with 0, 17
                    if (arg3 * arg4) + idx >= mem[96]:
                        revert with 0, 50
                    if idx >= mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor256[arg1][address(arg2)].field_0) + 160] = mem[(32 * (arg3 * arg4) + idx) + 128]
                else:
                    _512 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_512] = 0
                    mem[_512 + 32] = 0
                    mem[_512 + 64] = 0
                    mem[_512 + 96] = 0
                    mem[_512 + 128] = 0
                    mem[_512 + 160] = 0
                    mem[_512 + 192] = 0
                    mem[_512 + 224] = 0
                    mem[_512 + 256] = 0
                    if idx >= mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor256[arg1][address(arg2)].field_0) + 160] = _512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _489 = mem[64]
            mem[mem[64]] = 32
            _491 = mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor256[arg1][address(arg2)].field_0) + 160
            while idx < _491:
                _615 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_615 + 44 len 20]
                mem[s + 64] = mem[_615 + 64]
                mem[s + 96] = mem[_615 + 108 len 20]
                mem[s + 128] = mem[_615 + 128]
                mem[s + 160] = mem[_615 + 160]
                mem[s + 192] = mem[_615 + 192]
                mem[s + 224] = mem[_615 + 224]
                mem[s + 256] = bool(mem[_615 + 256])
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _489 + (288 * _491) + -mem[64] + 64
        mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 448
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 160] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 192] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 224] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 256] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 288] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 320] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 352] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 384] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 416] = 0
        mem[var31001] = (32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 160
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 288
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 160] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 192] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 224] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 256] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 288] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 320] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 352] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 384] = 0
            mem[(32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 416] = 0
            mem[s + 32] = (32 * stor256[arg1][address(arg2)].field_0) + (32 * arg4) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg4:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx < mem[96]:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor256[arg1][address(arg2)].field_0) + 160] = mem[(32 * (arg3 * arg4) + idx) + 128]
            else:
                _811 = mem[64]
                mem[64] = mem[64] + 288
                mem[_811] = 0
                mem[_811 + 32] = 0
                mem[_811 + 64] = 0
                mem[_811 + 96] = 0
                mem[_811 + 128] = 0
                mem[_811 + 160] = 0
                mem[_811 + 192] = 0
                mem[_811 + 224] = 0
                mem[_811 + 256] = 0
                if idx >= mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor256[arg1][address(arg2)].field_0) + 160] = _811
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _777 = mem[64]
        mem[mem[64]] = 32
        _783 = mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor256[arg1][address(arg2)].field_0) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * stor256[arg1][address(arg2)].field_0) + 160
        while idx < _783:
            _921 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_921 + 44 len 20]
            mem[s + 64] = mem[_921 + 64]
            mem[s + 96] = mem[_921 + 108 len 20]
            mem[s + 128] = mem[_921 + 128]
            mem[s + 160] = mem[_921 + 160]
            mem[s + 192] = mem[_921 + 192]
            mem[s + 224] = mem[_921 + 224]
            mem[s + 256] = bool(mem[_921 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _777 + (288 * _783) + -mem[64] + 64
    mem[64] = (32 * stor256[arg1][address(arg2)].field_0) + 416
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = 0
    mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = 0
    mem[var18001] = (32 * stor256[arg1][address(arg2)].field_0) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 128] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 160] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 192] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 224] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 256] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 288] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 320] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 352] = 0
        mem[(32 * stor256[arg1][address(arg2)].field_0) + 384] = 0
        mem[s + 32] = (32 * stor256[arg1][address(arg2)].field_0) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if var42002 < stor256[arg1][address(arg2)].field_0:
        if var48001 < stor256[arg1][address(arg2)].field_0:
            mem[0] = var52001
            mem[32] = 261
            _1342 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1342] = sub_8dd3c719[var52001].field_0
            mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
            mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
            mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
            mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
            mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
            mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
            mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
            mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
            _1343 = mem[96]
            s = var52001
            idx = var52008
            while idx < _1343:
                mem[(32 * idx) + 128] = _1342
                if idx == -1:
                    revert with 0, 17
                if idx + 1 < stor256[arg1][address(arg2)].field_0:
                    mem[0] = stor256[arg1][address(arg2)][idx].field_512
                    mem[32] = 261
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_8dd3c719[stor256[arg1][address(arg2)][idx].field_512].field_0
                    mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    s = stor256[arg1][address(arg2)][idx].field_256
                    idx = idx + 1
                    continue 
                if arg4 > test266151307():
                    revert with 0, 65
                _1371 = mem[64]
                mem[mem[64]] = arg4
                mem[64] = mem[64] + (32 * arg4) + 32
                if not arg4:
                    idx = 0
                    while idx < arg4:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx < mem[96]:
                            if arg3 and arg4 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * arg4 > !idx:
                                revert with 0, 17
                            if (arg3 * arg4) + idx >= mem[96]:
                                revert with 0, 50
                            if idx >= mem[_1371]:
                                revert with 0, 50
                            mem[(32 * idx) + _1371 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                        else:
                            _1447 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1447] = 0
                            mem[_1447 + 32] = 0
                            mem[_1447 + 64] = 0
                            mem[_1447 + 96] = 0
                            mem[_1447 + 128] = 0
                            mem[_1447 + 160] = 0
                            mem[_1447 + 192] = 0
                            mem[_1447 + 224] = 0
                            mem[_1447 + 256] = 0
                            if idx >= mem[_1371]:
                                revert with 0, 50
                            mem[(32 * idx) + _1371 + 32] = _1447
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = s
                        mem[32] = 261
                        _1342 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1342] = sub_8dd3c719[s].field_0
                        mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                        mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                        mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                        mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                        mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                        mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                        mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                        mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                        idx = idx + 1
                        continue 
                    _1419 = mem[64]
                    mem[mem[64]] = 32
                    _1421 = mem[_1371]
                    mem[mem[64] + 32] = mem[_1371]
                    idx = 0
                    t = mem[64] + 64
                    u = _1371 + 32
                    while idx < _1421:
                        _1475 = mem[u]
                        mem[t] = mem[mem[u]]
                        mem[t + 32] = mem[_1475 + 44 len 20]
                        mem[t + 64] = mem[_1475 + 64]
                        mem[t + 96] = mem[_1475 + 108 len 20]
                        mem[t + 128] = mem[_1475 + 128]
                        mem[t + 160] = mem[_1475 + 160]
                        mem[t + 192] = mem[_1475 + 192]
                        mem[t + 224] = mem[_1475 + 224]
                        mem[t + 256] = bool(mem[_1475 + 256])
                        mem[0] = s
                        mem[32] = 261
                        _1342 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1342] = sub_8dd3c719[s].field_0
                        mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                        mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                        mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                        mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                        mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                        mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                        mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                        mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                        idx = idx + 1
                        t = t + 288
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1419 + (288 * _1421) + -mem[64] + 64
                mem[64] = _1371 + (32 * arg4) + 320
                mem[_1371 + (32 * arg4) + 32] = 0
                mem[_1371 + (32 * arg4) + 64] = 0
                mem[_1371 + (32 * arg4) + 96] = 0
                mem[_1371 + (32 * arg4) + 128] = 0
                mem[_1371 + (32 * arg4) + 160] = 0
                mem[_1371 + (32 * arg4) + 192] = 0
                mem[_1371 + (32 * arg4) + 224] = 0
                mem[_1371 + (32 * arg4) + 256] = 0
                mem[_1371 + (32 * arg4) + 288] = 0
                mem[var58001] = _1371 + (32 * arg4) + 32
                t = var58001
                idx = var58002
                while idx - 1:
                    mem[0] = s
                    mem[32] = 261
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_8dd3c719[s].field_0
                    mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    mem[64] = mem[64] + 288
                    mem[_1371 + (32 * arg4) + 32] = 0
                    mem[_1371 + (32 * arg4) + 64] = 0
                    mem[_1371 + (32 * arg4) + 96] = 0
                    mem[_1371 + (32 * arg4) + 128] = 0
                    mem[_1371 + (32 * arg4) + 160] = 0
                    mem[_1371 + (32 * arg4) + 192] = 0
                    mem[_1371 + (32 * arg4) + 224] = 0
                    mem[_1371 + (32 * arg4) + 256] = 0
                    mem[_1371 + (32 * arg4) + 288] = 0
                    mem[t + 32] = _1371 + (32 * arg4) + 32
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < arg4:
                    if arg3 and arg4 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * arg4 > !idx:
                        revert with 0, 17
                    if (arg3 * arg4) + idx < mem[96]:
                        if arg3 and arg4 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * arg4 > !idx:
                            revert with 0, 17
                        if (arg3 * arg4) + idx >= mem[96]:
                            revert with 0, 50
                        if idx >= mem[_1371]:
                            revert with 0, 50
                        mem[(32 * idx) + _1371 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
                    else:
                        _1529 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1529] = 0
                        mem[_1529 + 32] = 0
                        mem[_1529 + 64] = 0
                        mem[_1529 + 96] = 0
                        mem[_1529 + 128] = 0
                        mem[_1529 + 160] = 0
                        mem[_1529 + 192] = 0
                        mem[_1529 + 224] = 0
                        mem[_1529 + 256] = 0
                        if idx >= mem[_1371]:
                            revert with 0, 50
                        mem[(32 * idx) + _1371 + 32] = _1529
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = s
                    mem[32] = 261
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_8dd3c719[s].field_0
                    mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    idx = idx + 1
                    continue 
                _1516 = mem[64]
                mem[mem[64]] = 32
                _1517 = mem[_1371]
                mem[mem[64] + 32] = mem[_1371]
                idx = 0
                t = mem[64] + 64
                u = _1371 + 32
                while idx < _1517:
                    _1534 = mem[u]
                    mem[t] = mem[mem[u]]
                    mem[t + 32] = mem[_1534 + 44 len 20]
                    mem[t + 64] = mem[_1534 + 64]
                    mem[t + 96] = mem[_1534 + 108 len 20]
                    mem[t + 128] = mem[_1534 + 128]
                    mem[t + 160] = mem[_1534 + 160]
                    mem[t + 192] = mem[_1534 + 192]
                    mem[t + 224] = mem[_1534 + 224]
                    mem[t + 256] = bool(mem[_1534 + 256])
                    mem[0] = s
                    mem[32] = 261
                    _1342 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1342] = sub_8dd3c719[s].field_0
                    mem[_1342 + 32] = address(sub_8dd3c719[var52001].field_256)
                    mem[_1342 + 64] = sub_8dd3c719[var52001].field_512
                    mem[_1342 + 96] = address(sub_8dd3c719[var52001].field_768)
                    mem[_1342 + 128] = sub_8dd3c719[var52001].field_1024
                    mem[_1342 + 160] = sub_8dd3c719[var52001].field_1280
                    mem[_1342 + 192] = sub_8dd3c719[var52001].field_1536
                    mem[_1342 + 224] = sub_8dd3c719[var52001].field_1792
                    mem[_1342 + 256] = bool(uint8(sub_8dd3c719[var52001].field_2048))
                    idx = idx + 1
                    t = t + 288
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _1516 + (288 * _1517) + -mem[64] + 64
        revert with 0, 50
    if arg4 > test266151307():
        revert with 0, 65
    _630 = mem[64]
    mem[mem[64]] = arg4
    mem[64] = mem[64] + (32 * arg4) + 32
    if not arg4:
        idx = 0
        while idx < arg4:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx < mem[96]:
                if arg3 and arg4 > -1 / arg3:
                    revert with 0, 17
                if arg3 * arg4 > !idx:
                    revert with 0, 17
                if (arg3 * arg4) + idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_630]:
                    revert with 0, 50
                mem[(32 * idx) + _630 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
            else:
                _813 = mem[64]
                mem[64] = mem[64] + 288
                mem[_813] = 0
                mem[_813 + 32] = 0
                mem[_813 + 64] = 0
                mem[_813 + 96] = 0
                mem[_813 + 128] = 0
                mem[_813 + 160] = 0
                mem[_813 + 192] = 0
                mem[_813 + 224] = 0
                mem[_813 + 256] = 0
                if idx >= mem[_630]:
                    revert with 0, 50
                mem[(32 * idx) + _630 + 32] = _813
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _781 = mem[64]
        mem[mem[64]] = 32
        _784 = mem[_630]
        mem[mem[64] + 32] = mem[_630]
        idx = 0
        s = mem[64] + 64
        t = _630 + 32
        while idx < _784:
            _922 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_922 + 44 len 20]
            mem[s + 64] = mem[_922 + 64]
            mem[s + 96] = mem[_922 + 108 len 20]
            mem[s + 128] = mem[_922 + 128]
            mem[s + 160] = mem[_922 + 160]
            mem[s + 192] = mem[_922 + 192]
            mem[s + 224] = mem[_922 + 224]
            mem[s + 256] = bool(mem[_922 + 256])
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _781 + (288 * _784) + -mem[64] + 64
    mem[64] = _630 + (32 * arg4) + 320
    mem[_630 + (32 * arg4) + 32] = 0
    mem[_630 + (32 * arg4) + 64] = 0
    mem[_630 + (32 * arg4) + 96] = 0
    mem[_630 + (32 * arg4) + 128] = 0
    mem[_630 + (32 * arg4) + 160] = 0
    mem[_630 + (32 * arg4) + 192] = 0
    mem[_630 + (32 * arg4) + 224] = 0
    mem[_630 + (32 * arg4) + 256] = 0
    mem[_630 + (32 * arg4) + 288] = 0
    mem[var38001] = _630 + (32 * arg4) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[_630 + (32 * arg4) + 32] = 0
        mem[_630 + (32 * arg4) + 64] = 0
        mem[_630 + (32 * arg4) + 96] = 0
        mem[_630 + (32 * arg4) + 128] = 0
        mem[_630 + (32 * arg4) + 160] = 0
        mem[_630 + (32 * arg4) + 192] = 0
        mem[_630 + (32 * arg4) + 224] = 0
        mem[_630 + (32 * arg4) + 256] = 0
        mem[_630 + (32 * arg4) + 288] = 0
        mem[s + 32] = _630 + (32 * arg4) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg4:
        if arg3 and arg4 > -1 / arg3:
            revert with 0, 17
        if arg3 * arg4 > !idx:
            revert with 0, 17
        if (arg3 * arg4) + idx < mem[96]:
            if arg3 and arg4 > -1 / arg3:
                revert with 0, 17
            if arg3 * arg4 > !idx:
                revert with 0, 17
            if (arg3 * arg4) + idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_630]:
                revert with 0, 50
            mem[(32 * idx) + _630 + 32] = mem[(32 * (arg3 * arg4) + idx) + 128]
        else:
            _1071 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1071] = 0
            mem[_1071 + 32] = 0
            mem[_1071 + 64] = 0
            mem[_1071 + 96] = 0
            mem[_1071 + 128] = 0
            mem[_1071 + 160] = 0
            mem[_1071 + 192] = 0
            mem[_1071 + 224] = 0
            mem[_1071 + 256] = 0
            if idx >= mem[_630]:
                revert with 0, 50
            mem[(32 * idx) + _630 + 32] = _1071
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1055 = mem[64]
    mem[mem[64]] = 32
    _1059 = mem[_630]
    mem[mem[64] + 32] = mem[_630]
    idx = 0
    s = mem[64] + 64
    t = _630 + 32
    while idx < _1059:
        _1161 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_1161 + 44 len 20]
        mem[s + 64] = mem[_1161 + 64]
        mem[s + 96] = mem[_1161 + 108 len 20]
        mem[s + 128] = mem[_1161 + 128]
        mem[s + 160] = mem[_1161 + 160]
        mem[s + 192] = mem[_1161 + 192]
        mem[s + 224] = mem[_1161 + 224]
        mem[s + 256] = bool(mem[_1161 + 256])
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1055 + (288 * _1059) + -mem[64] + 64
}



}
