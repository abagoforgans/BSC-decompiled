contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7)
#  - withdrawFromBridge(uint256 arg1)
#
const sub_2e8fc441(?) = 1

const sub_418aa21f(?) = 2

const sub_435e156a(?) = 1

const sub_602fccf7(?) = 1

const sub_6d570dc6(?) = 5

const sub_936054c8(?) = 2

const sub_b83f391d(?) = 2

const sub_bf465b76(?) = 3

const sub_cb8ac989(?) = 4

const sub_d127e1cb(?) = 0

const sub_e6ad247d(?) = 3

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
address stor101;
address stor102;
address stor104;
address stor105;
address stor106;
uint8 sub_ef74bc0e; offset 160
uint128 stor107; offset 160
address stor107;
array of uint256 sub_75b67373;
mapping of address stor109;
array of uint256 stor110;
array of uint256 nFTChainId;
uint256 bridgeTransferAt;
uint256 bridgeTransfers;
mapping of uint8 stor114;
array of uint256 stor115;
uint8 botEnabled;
mapping of struct bridgeTransfer;
mapping of uint256 bridgeTransfer;
mapping of uint256 stor119;
array of struct stor120;
mapping of uint256 stor121;
array of uint256 stor123;
uint256 stor124;
mapping of struct stor125;
mapping of uint256 stor126;
mapping of uint256 stor127;
array of uint256 stor128;
mapping of uint256 stor129;
mapping of uint256 sub_22773def;
address gameAddress;
uint256 bridgeFee;
mapping of uint256 stor134;
array of uint256 stor135;
address promosAddress;
array of struct sub_3440e7a9;
address stor138;
mapping of uint256 stor336492626609784167942478;
address stor87B4;

function sub_22773def(?) payable {
    require calldata.size - 4 >= 96
    return sub_22773def[arg1][arg2 << 248][arg3]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getBridgeTransferAt() payable {
    return bridgeTransferAt
}

function sub_3440e7a9(?) payable {
    return sub_3440e7a9[0 len sub_3440e7a9.length].field_0
}

function getBridgeTransfers() payable {
    return bridgeTransfers
}

function chainBridgeEnabled(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor114[arg1])
}

function promos() payable {
    return promosAddress
}

function getBridgeTransfer() payable {
    return bridgeTransfer[address(msg.sender)]
}

function getNFTChainId(address arg1, uint256 arg2) payable {
    return nFTChainId[address(arg1)][arg2][0 len nFTChainId[address(arg1)][arg2].length]
}

function botEnabled() payable {
    return bool(botEnabled)
}

function isTokenSupported(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor121[address(arg1)])
}

function sub_75b67373(?) payable {
    require calldata.size - 4 >= 32
    return sub_75b67373[msg.sender][address(arg1)]
}

function getBridgeFee() payable {
    return bridgeFee
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_9643ed27(?) payable {
    require calldata.size - 4 >= 32
    return bridgeTransfer[address(arg1)]
}

function game() payable {
    return gameAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_ef74bc0e(?) payable {
    return bool(sub_ef74bc0e)
}

function getBridgeTransfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(bridgeTransfer[arg1].field_0), 
           address(bridgeTransfer[arg1].field_256),
           bridgeTransfer[arg1].field_1024,
           bridgeTransfer[arg1].field_512,
           bridgeTransfer[arg1].field_768,
           bridgeTransfer[arg1].field_1280,
           uint8(bridgeTransfer[arg1].field_1536)
}

function _fallback() payable {
    revert
}

function sub_00c0124b(?) payable {
    require calldata.size - 4 >= 192
    return 0, arg1, arg2, arg3, arg4, arg5, 0, arg6
}

function sub_b0769561(?) payable {
    require calldata.size - 4 >= 160
    return 0, arg5 % 16777216, arg1, arg2, arg3, arg4
}

function sub_0e45ea6d(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 224, arg1 << 240, arg1 << 240, arg1 << 240, uint16(arg1), arg1 << 248
}

function unpackCharactersData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1 << 224, arg1 << 240, arg1 << 248, arg1 << 248, Mask(24, 64, arg1) >> 64
}

function sub_3fa13349(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    gameAddress = arg1
}

function setBridgeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    bridgeFee = arg1
}

function sub_ae9d4b0b(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    promosAddress = arg1
}

function toggleBotEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    botEnabled = uint8(arg1)
}

function sub_377bdfd2(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    stor138 = arg1
    stor87B4 = arg1
}

function sub_2f48914b(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    Mask(96, 0, stor107.field_160) = Mask(96, 0, arg1)
}

function unpackWeaponsData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1 << 224, arg1 << 240, arg1 << 240, arg1 << 240, uint16(arg1), arg1 << 248, arg1 << 248, arg1 << 248, uint8(arg1)
}

function packWeaponsData(uint32 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5, uint8 arg6, uint8 arg7, uint8 arg8, uint8 arg9) payable {
    require calldata.size - 4 >= 288
    return 0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
}

function setBridgeTransferAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NGA'
    bridgeTransferAt = arg1
}

function getReceivedNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(stor125[arg1].field_0), 
           uint8(stor125[arg1].field_0),
           stor125[arg1].field_256,
           stor125[arg1].field_512,
           uint8(stor125[arg1].field_1536),
           stor126[arg1]
}

function cancelBridge() payable {
    if uint8(bridgeTransfer[stor118[msg.sender]].field_1536) != 1:
        revert with 0, 'no pending bridge'
    uint8(bridgeTransfer[stor118[msg.sender]].field_1536) = 0
    bridgeTransfer[stor118[msg.sender]].field_768 = block.number
    emit NFTTransferOutCanceled(msg.sender);
}

function allowToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    if not stor121[address(arg1)]:
        stor120.length++
        address(stor120[stor120.length].field_0) = arg1
        Mask(96, 0, stor120[stor120.length].field_160) = 0
        stor121[address(arg1)] = stor120.length
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor121[address(msg.sender)]:
        revert with 0, 'Token ID not listed'
    if not stor110[address(msg.sender)][1][arg3]:
        revert with 0, 'Token ID not listed'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function disallowToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    if stor121[address(arg1)]:
        require stor120.length - 1 < stor120.length
        require stor121[address(arg1)] - 1 < stor120.length
        stor120[stor121[address(arg1)]].field_0 = stor120[stor120.length].field_0
        stor121[stor120[stor120.length].field_0] = stor121[address(arg1)]
        require stor120.length
        stor120[stor120.length].field_0 = 0
        stor120.length--
        stor121[address(arg1)] = 0
}

function sub_30a61af3(?) payable {
    require stor128.length <= test266151307()
    if stor128.length:
        mem[128 len 32 * stor128.length] = call.data[calldata.size len 32 * stor128.length]
    idx = 0
    while idx < stor128.length:
        mem[0] = 128
        require idx < stor128.length
        mem[(32 * idx) + 128] = stor128[idx]
        idx = idx + 1
        continue 
    mem[(32 * stor128.length) + 192 len floor32(stor128.length)] = mem[128 len floor32(stor128.length)]
    return Array(len=stor128.length, data=mem[128 len floor32(stor128.length)], mem[(32 * stor128.length) + floor32(stor128.length) + 192 len (32 * stor128.length) - floor32(stor128.length)]), 
}

function sub_235ad6e1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    sub_3440e7a9.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_3440e7a9[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_3440e7a9.length + 31 / 32 > idx:
        sub_3440e7a9[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function getSupportedTokenTypes() payable {
    require stor120.length <= test266151307()
    mem[96] = stor120.length
    if stor120.length:
        mem[128 len 32 * stor120.length] = call.data[calldata.size len 32 * stor120.length]
    idx = 0
    while idx < mem[96]:
        if idx >= stor120.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor120.length) + 230 len 30]
        mem[0] = 120
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor120[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * stor120.length) + 128] = 32
    mem[(32 * stor120.length) + 160] = mem[96]
    mem[(32 * stor120.length) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * stor120.length) + 160 len (32 * mem[96]) + 32]
}

function sub_9b7453ab(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'AO'
    stor114[arg1] = uint8(arg3)
    stor115[arg1][] = Array(len=arg2.length, data=arg2[all])
    if arg3:
        if not stor129[arg1]:
            stor128.length++
            stor128[stor128.length] = arg1
            stor129[arg1] = stor128.length
    else:
        if stor129[arg1]:
            require stor128.length - 1 < stor128.length
            require stor129[arg1] - 1 < stor128.length
            stor128[stor129[arg1]] = stor128[stor128.length]
            stor129[stor128[stor128.length]] = stor129[arg1]
            require stor128.length
            stor128[stor128.length] = 0
            stor128.length--
            stor129[arg1] = 0
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_0e7d2824(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor138)
    staticcall stor138.get(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(stor138)
    staticcall stor138.0x783efb25 with:
            gas gas_remaining wei
           args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor138)
    staticcall stor138.getCosmeticsSeed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           uint16(ext_call.return_data[0]),
           uint16(ext_call.return_data[32]),
           uint16(ext_call.return_data[64]),
           uint16(ext_call.return_data[96]),
           0,
           uint8(ext_call.return_data[0]),
           ext_call.return_data[0],
           96,
           0
}

function sub_840636e2(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NGA'
    if not cd[100]:
        if nFTChainId[address(cd[4])][cd[36]].length:
            revert with 0, 'NA'
        if stor134[address(cd[4])][call.data[cd[68] + 36 len ('cd', 68).length]]:
            revert with 0, 'NA'
    nFTChainId[address(cd[4])][cd[36]] = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        nFTChainId[address(cd[4])][cd[36]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while nFTChainId[address(cd[4])][cd[36]].length + 31 / 32 > idx:
        nFTChainId[address(cd[4])][cd[36]][idx] = 0
        idx = idx + 1
        continue 
    stor134[address(cd[4])][call.data[cd[68] + 36 len ('cd', 68).length]] = cd[36]
}

function sub_24ebe06a(?) payable {
    require calldata.size - 4 >= 256
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if not roleAdmin[Mask(80, -(8 * ceil32(arg8.length) + -arg8.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg8.length)) + (8 * arg8.length) + 256][1][address(msg.sender)].field_0:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NGA'
    stor124++
    address(stor125[stor124 + 1].field_0) = arg1
    uint8(stor125[stor124 + 1].field_160) = arg2
    stor125[stor124 + 1].field_256 = arg3
    stor125[stor124 + 1].field_512 = arg4
    stor125[stor124 + 1][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    stor125[stor124 + 1].field_1024 = block.number
    stor125[stor124 + 1].field_1280 = 0
    uint8(stor125[stor124 + 1].field_1536) = 1
    if not stor123[address(arg1)][1][stor124]:
        stor123[address(arg1)]++
        stor123[address(arg1)][stor123[address(arg1)]] = stor124
        stor123[address(arg1)][1][stor124] = stor123[address(arg1)]
    stor126[stor124] = arg6
    stor127[stor124] = arg7
    stor135[stor124][] = Array(len=arg8.length, data=arg8[all])
    sub_22773def[arg3][arg2 << 248][arg4] = stor124
    emit TransferedIn(arg2 << 248, arg3, arg1, arg4);
}

function sub_bff6a82f(?) payable {
    require calldata.size - 4 >= 64
    if not stor121[address(arg1)]:
        revert with 0, 'Error'
    if stor121[address(arg1)]:
        if sub_75b67373[msg.sender][address(arg1)][1][arg2]:
            revert with 0, 'Already listed'
    if not sub_ef74bc0e:
        revert with 0, 'storage disabled'
    require ext_code.size(promosAddress)
    staticcall promosAddress.0x907ef7d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'storage disabled'
    if not sub_75b67373[msg.sender][address(arg1)][1][arg2]:
        sub_75b67373[msg.sender][address(arg1)]++
        sub_75b67373[msg.sender][address(arg1)][sub_75b67373[msg.sender][address(arg1)]] = arg2
        sub_75b67373[msg.sender][address(arg1)][1][arg2] = sub_75b67373[msg.sender][address(arg1)]
    if not stor110[address(arg1)][1][arg2]:
        stor110[address(arg1)]++
        stor110[address(arg1)][stor110[address(arg1)]] = arg2
        stor110[address(arg1)][1][arg2] = stor110[address(arg1)]
    uint256(stor109[address(arg1)][arg2]) = msg.sender or Mask(96, 160, uint256(stor109[address(arg1)][arg2]))
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x17441e63: msg.sender, arg1, arg2
}

function sub_08d48422(?) payable {
    require calldata.size - 4 >= 64
    if not stor121[address(arg1)]:
        revert with 0, 'Not listed'
    if not sub_75b67373[msg.sender][address(arg1)][1][arg2]:
        revert with 0, 'Not listed'
    if address(stor109[address(arg1)][arg2]) != msg.sender:
        revert with 0, 'Access denied'
    if uint8(bridgeTransfer[stor119[address(arg1)][arg2]].field_1536):
        if uint8(bridgeTransfer[stor119[address(arg1)][arg2]].field_1536) != 5:
            revert with 0, 'Pending bridge'
    if sub_75b67373[msg.sender][address(arg1)][1][arg2]:
        require sub_75b67373[msg.sender][address(arg1)] - 1 < sub_75b67373[msg.sender][address(arg1)]
        require sub_75b67373[msg.sender][address(arg1)][1][arg2] - 1 < sub_75b67373[msg.sender][address(arg1)]
        sub_75b67373[msg.sender][address(arg1)][sub_75b67373[msg.sender][address(arg1)][1][arg2]] = sub_75b67373[msg.sender][address(arg1)][sub_75b67373[msg.sender][address(arg1)]]
        sub_75b67373[msg.sender][address(arg1)][1][sub_75b67373[msg.sender][address(arg1)][sub_75b67373[msg.sender][address(arg1)]]] = sub_75b67373[msg.sender][address(arg1)][1][arg2]
        require sub_75b67373[msg.sender][address(arg1)]
        sub_75b67373[msg.sender][address(arg1)][sub_75b67373[msg.sender][address(arg1)]] = 0
        sub_75b67373[msg.sender][address(arg1)]--
        sub_75b67373[msg.sender][address(arg1)][1][arg2] = 0
    if stor110[address(arg1)][1][arg2]:
        require stor110[address(arg1)] - 1 < stor110[address(arg1)]
        require stor110[address(arg1)][1][arg2] - 1 < stor110[address(arg1)]
        stor110[address(arg1)][stor110[address(arg1)][1][arg2]] = stor110[address(arg1)][stor110[address(arg1)]]
        stor110[address(arg1)][1][stor110[address(arg1)][stor110[address(arg1)]]] = stor110[address(arg1)][1][arg2]
        require stor110[address(arg1)]
        stor110[address(arg1)][stor110[address(arg1)]] = 0
        stor110[address(arg1)]--
        stor110[address(arg1)][1][arg2] = 0
    address(stor109[address(arg1)][arg2]) = 0
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NFTWithdrawn(msg.sender, arg1, arg2);
}

function getReceivedNFTs() payable {
    require stor123[msg.sender] <= test266151307()
    if not stor123[msg.sender]:
        if var30002 >= stor123[msg.sender]:
            mem[(32 * stor123[msg.sender]) + 128] = 32
            mem[(32 * stor123[msg.sender]) + 160] = stor123[msg.sender]
            mem[(32 * stor123[msg.sender]) + 192 len floor32(stor123[msg.sender])] = mem[128 len floor32(stor123[msg.sender])]
            return memory
              from (32 * stor123[msg.sender]) + 128
               len (96 * stor123[msg.sender]) + 64
        if var36001 >= stor123[msg.sender]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor123[msg.sender]) + 230 len 30]
        require var38002 < stor123[msg.sender]
        require var44003 < stor123[msg.sender]
        mem[(32 * var46001) + 128] = var46003
        if var56002 < stor123[msg.sender]:
            # nil
        else:
            mem[(32 * stor123[msg.sender]) + 128] = 32
            mem[(32 * stor123[msg.sender]) + 160] = stor123[msg.sender]
            mem[(32 * stor123[msg.sender]) + 192 len floor32(stor123[msg.sender])] = mem[128 len floor32(stor123[msg.sender])]
            return memory
              from (32 * stor123[msg.sender]) + 128
               len (96 * stor123[msg.sender]) + 64
    else:
        mem[128 len 32 * stor123[msg.sender]] = call.data[calldata.size len 32 * stor123[msg.sender]]
        if var31002 >= stor123[msg.sender]:
            mem[(32 * stor123[msg.sender]) + 128] = 32
            mem[(32 * stor123[msg.sender]) + 160] = stor123[msg.sender]
            mem[(32 * stor123[msg.sender]) + 192 len floor32(stor123[msg.sender])] = call.data[calldata.size len floor32(stor123[msg.sender])]
            return memory
              from (32 * stor123[msg.sender]) + 128
               len (96 * stor123[msg.sender]) + 64
        if var37001 >= stor123[msg.sender]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor123[msg.sender]) + 230 len 30]
        require var39002 < stor123[msg.sender]
        require var45003 < stor123[msg.sender]
        mem[(32 * var47001) + 128] = var47003
        if var57002 < stor123[msg.sender]:
            # nil
        else:
            mem[(32 * stor123[msg.sender]) + 128] = 32
            mem[(32 * stor123[msg.sender]) + 160] = stor123[msg.sender]
            mem[(32 * stor123[msg.sender]) + 192 len floor32(stor123[msg.sender])] = call.data[calldata.size len floor32(stor123[msg.sender])]
            return memory
              from (32 * stor123[msg.sender]) + 128
               len (96 * stor123[msg.sender]) + 64
}

function sub_0bd18e59(?) payable {
    require calldata.size - 4 >= 32
    require sub_75b67373[msg.sender][address(arg1)] <= test266151307()
    if not sub_75b67373[msg.sender][address(arg1)]:
        if var33002 >= sub_75b67373[msg.sender][address(arg1)]:
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 128] = 32
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 160] = sub_75b67373[msg.sender][address(arg1)]
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 192 len floor32(sub_75b67373[msg.sender][address(arg1)])] = mem[128 len floor32(sub_75b67373[msg.sender][address(arg1)])]
            return memory
              from (32 * sub_75b67373[msg.sender][address(arg1)]) + 128
               len (96 * sub_75b67373[msg.sender][address(arg1)]) + 64
        if var39001 >= sub_75b67373[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 230 len 30]
        require var41002 < sub_75b67373[msg.sender][address(arg1)]
        require var47003 < sub_75b67373[msg.sender][address(arg1)]
        mem[(32 * var49001) + 128] = var49003
        if var59002 < sub_75b67373[msg.sender][address(arg1)]:
            # nil
        else:
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 128] = 32
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 160] = sub_75b67373[msg.sender][address(arg1)]
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 192 len floor32(sub_75b67373[msg.sender][address(arg1)])] = mem[128 len floor32(sub_75b67373[msg.sender][address(arg1)])]
            return memory
              from (32 * sub_75b67373[msg.sender][address(arg1)]) + 128
               len (96 * sub_75b67373[msg.sender][address(arg1)]) + 64
    else:
        mem[128 len 32 * sub_75b67373[msg.sender][address(arg1)]] = call.data[calldata.size len 32 * sub_75b67373[msg.sender][address(arg1)]]
        if var34002 >= sub_75b67373[msg.sender][address(arg1)]:
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 128] = 32
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 160] = sub_75b67373[msg.sender][address(arg1)]
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 192 len floor32(sub_75b67373[msg.sender][address(arg1)])] = call.data[calldata.size len floor32(sub_75b67373[msg.sender][address(arg1)])]
            return memory
              from (32 * sub_75b67373[msg.sender][address(arg1)]) + 128
               len (96 * sub_75b67373[msg.sender][address(arg1)]) + 64
        if var40001 >= sub_75b67373[msg.sender][address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 230 len 30]
        require var42002 < sub_75b67373[msg.sender][address(arg1)]
        require var48003 < sub_75b67373[msg.sender][address(arg1)]
        mem[(32 * var50001) + 128] = var50003
        if var60002 < sub_75b67373[msg.sender][address(arg1)]:
            # nil
        else:
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 128] = 32
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 160] = sub_75b67373[msg.sender][address(arg1)]
            mem[(32 * sub_75b67373[msg.sender][address(arg1)]) + 192 len floor32(sub_75b67373[msg.sender][address(arg1)])] = call.data[calldata.size len floor32(sub_75b67373[msg.sender][address(arg1)])]
            return memory
              from (32 * sub_75b67373[msg.sender][address(arg1)]) + 128
               len (96 * sub_75b67373[msg.sender][address(arg1)]) + 64
}

function packedCharacterData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor102)
    staticcall stor102.get(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(address(stor107.field_0))
    staticcall address(stor107.field_0).getCharacterCosmetic(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x3715665700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor105)
    staticcall stor105.getCharacterRename(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _17 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _17 % 32:
        mem[64] = _17 + ceil32(return_data.size) + 128
        require ext_code.size(stor102)
        staticcall stor102.getCosmeticsSeed(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor102)
        staticcall stor102.0x783efb25 with:
                gas gas_remaining wei
               args arg1, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_17 + ceil32(return_data.size) + 159 len 1] = uint8(ext_call.return_data[64])
        mem[_17 + ceil32(return_data.size) + 158 len 1] = uint8(ext_call.return_data[32])
        mem[_17 + ceil32(return_data.size) + 156 len 2] = uint16(ext_call.return_data[0])
        mem[_17 + ceil32(return_data.size) + 152 len 4] = uint32(ext_call.return_data[0])
        mem[_17 + ceil32(return_data.size) + 149 len 3] = ext_call.return_data[0] % 16777216
        mem[_17 + ceil32(return_data.size) + 128 len 21] = 0
        mem[_17 + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        mem[_17 + ceil32(return_data.size) + 192] = 96
        mem[_17 + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
        mem[_17 + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 0, 
                   ext_call.return_data[0] % 16777216,
                   uint32(ext_call.return_data[0]),
                   uint16(ext_call.return_data[0]),
                   uint8(ext_call.return_data[32]),
                   uint8(ext_call.return_data[64]),
                   ext_call.return_data[0],
                   96,
                   mem[_17 + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _17 + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _17 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
        return 0, 
               ext_call.return_data[0] % 16777216,
               uint32(ext_call.return_data[0]),
               uint16(ext_call.return_data[0]),
               uint8(ext_call.return_data[32]),
               uint8(ext_call.return_data[64]),
               ext_call.return_data[0],
               96,
               mem[ceil32(return_data.size) + 96],
               mem[_17 + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
    mem[floor32(_17) + ceil32(return_data.size) + 128] = mem[floor32(_17) + ceil32(return_data.size) + -(_17 % 32) + 160 len _17 % 32]
    mem[64] = floor32(_17) + ceil32(return_data.size) + 160
    require ext_code.size(stor102)
    staticcall stor102.getCosmeticsSeed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor102)
    staticcall stor102.0x783efb25 with:
            gas gas_remaining wei
           args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_17) + ceil32(return_data.size) + 191 len 1] = uint8(ext_call.return_data[64])
    mem[floor32(_17) + ceil32(return_data.size) + 190 len 1] = uint8(ext_call.return_data[32])
    mem[floor32(_17) + ceil32(return_data.size) + 188 len 2] = uint16(ext_call.return_data[0])
    mem[floor32(_17) + ceil32(return_data.size) + 184 len 4] = uint32(ext_call.return_data[0])
    mem[floor32(_17) + ceil32(return_data.size) + 181 len 3] = ext_call.return_data[0] % 16777216
    mem[floor32(_17) + ceil32(return_data.size) + 160 len 21] = 0
    mem[floor32(_17) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    mem[floor32(_17) + ceil32(return_data.size) + 224] = 96
    mem[floor32(_17) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_17) + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 0, 
               ext_call.return_data[0] % 16777216,
               uint32(ext_call.return_data[0]),
               uint16(ext_call.return_data[0]),
               uint8(ext_call.return_data[32]),
               uint8(ext_call.return_data[64]),
               ext_call.return_data[0],
               96,
               mem[floor32(_17) + ceil32(return_data.size) + 256 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_17) + ceil32(return_data.size) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_17) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
    return 0, 
           ext_call.return_data[0] % 16777216,
           uint32(ext_call.return_data[0]),
           uint16(ext_call.return_data[0]),
           uint8(ext_call.return_data[32]),
           uint8(ext_call.return_data[64]),
           ext_call.return_data[0],
           96,
           mem[ceil32(return_data.size) + 96],
           mem[floor32(_17) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
}

function packedWeaponsData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor101)
    staticcall stor101.get(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 352] = ext_call.return_data[0 len 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require ext_code.size(stor106)
    staticcall stor106.getWeaponCosmetic(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x4257fb5500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor104)
    staticcall stor104.getWeaponRename(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _22 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _25 = mem[_22 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_22 + 96])] = mem[_22 + 128 len ceil32(mem[_22 + 96])]
    if not _25 % 32:
        mem[64] = _25 + ceil32(return_data.size) + 128
        require ext_code.size(stor101)
        staticcall stor101.getCosmeticsSeed(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_25 + ceil32(return_data.size) + 159 len 1] = Mask(8, 16, ext_call.return_data[288]) >> 16
        mem[_25 + ceil32(return_data.size) + 158 len 1] = uint16(ext_call.return_data[288]) / 256
        mem[_25 + ceil32(return_data.size) + 157 len 1] = uint8(ext_call.return_data[288])
        mem[_25 + ceil32(return_data.size) + 156 len 1] = uint8(ext_call.return_data[128])
        mem[_25 + ceil32(return_data.size) + 154 len 2] = uint16(ext_call.return_data[96])
        mem[_25 + ceil32(return_data.size) + 152 len 2] = uint16(ext_call.return_data[64])
        mem[_25 + ceil32(return_data.size) + 150 len 2] = uint16(ext_call.return_data[32])
        mem[_25 + ceil32(return_data.size) + 148 len 2] = uint16(ext_call.return_data[0])
        mem[_25 + ceil32(return_data.size) + 144 len 4] = uint32(ext_call.return_data[0])
        mem[_25 + ceil32(return_data.size) + 128 len 16] = 0
        mem[_25 + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        mem[_25 + ceil32(return_data.size) + 192] = 96
        mem[_25 + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
        mem[_25 + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 0, 
                   uint32(ext_call.return_data[0]),
                   uint16(ext_call.return_data[0]),
                   uint16(ext_call.return_data[32]),
                   uint16(ext_call.return_data[64]),
                   uint16(ext_call.return_data[96]),
                   uint8(ext_call.return_data[128]),
                   uint8(ext_call.return_data[288]),
                   uint16(ext_call.return_data[288]) / 256,
                   Mask(8, 16, ext_call.return_data[288]) >> 16,
                   ext_call.return_data[0],
                   96,
                   mem[_25 + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _25 + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _25 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
        return 0, 
               uint32(ext_call.return_data[0]),
               uint16(ext_call.return_data[0]),
               uint16(ext_call.return_data[32]),
               uint16(ext_call.return_data[64]),
               uint16(ext_call.return_data[96]),
               uint8(ext_call.return_data[128]),
               uint8(ext_call.return_data[288]),
               uint16(ext_call.return_data[288]) / 256,
               Mask(8, 16, ext_call.return_data[288]) >> 16,
               ext_call.return_data[0],
               96,
               mem[ceil32(return_data.size) + 96],
               mem[_25 + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
    mem[floor32(_25) + ceil32(return_data.size) + 128] = mem[floor32(_25) + ceil32(return_data.size) + -(_25 % 32) + 160 len _25 % 32]
    mem[64] = floor32(_25) + ceil32(return_data.size) + 160
    require ext_code.size(stor101)
    staticcall stor101.getCosmeticsSeed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_25) + ceil32(return_data.size) + 191 len 1] = Mask(8, 16, ext_call.return_data[288]) >> 16
    mem[floor32(_25) + ceil32(return_data.size) + 190 len 1] = uint16(ext_call.return_data[288]) / 256
    mem[floor32(_25) + ceil32(return_data.size) + 189 len 1] = uint8(ext_call.return_data[288])
    mem[floor32(_25) + ceil32(return_data.size) + 188 len 1] = uint8(ext_call.return_data[128])
    mem[floor32(_25) + ceil32(return_data.size) + 186 len 2] = uint16(ext_call.return_data[96])
    mem[floor32(_25) + ceil32(return_data.size) + 184 len 2] = uint16(ext_call.return_data[64])
    mem[floor32(_25) + ceil32(return_data.size) + 182 len 2] = uint16(ext_call.return_data[32])
    mem[floor32(_25) + ceil32(return_data.size) + 180 len 2] = uint16(ext_call.return_data[0])
    mem[floor32(_25) + ceil32(return_data.size) + 176 len 4] = uint32(ext_call.return_data[0])
    mem[floor32(_25) + ceil32(return_data.size) + 160 len 16] = 0
    mem[floor32(_25) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    mem[floor32(_25) + ceil32(return_data.size) + 224] = 96
    mem[floor32(_25) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_25) + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 0, 
               uint32(ext_call.return_data[0]),
               uint16(ext_call.return_data[0]),
               uint16(ext_call.return_data[32]),
               uint16(ext_call.return_data[64]),
               uint16(ext_call.return_data[96]),
               uint8(ext_call.return_data[128]),
               uint8(ext_call.return_data[288]),
               uint16(ext_call.return_data[288]) / 256,
               Mask(8, 16, ext_call.return_data[288]) >> 16,
               ext_call.return_data[0],
               96,
               mem[floor32(_25) + ceil32(return_data.size) + 256 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_25) + ceil32(return_data.size) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_25) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
    return 0, 
           uint32(ext_call.return_data[0]),
           uint16(ext_call.return_data[0]),
           uint16(ext_call.return_data[32]),
           uint16(ext_call.return_data[64]),
           uint16(ext_call.return_data[96]),
           uint8(ext_call.return_data[128]),
           uint8(ext_call.return_data[288]),
           uint16(ext_call.return_data[288]) / 256,
           Mask(8, 16, ext_call.return_data[288]) >> 16,
           ext_call.return_data[0],
           96,
           mem[ceil32(return_data.size) + 96],
           mem[floor32(_25) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_ae3f27c7(?) payable {
    require calldata.size - 4 >= 96
    if not stor121[address(arg1)]:
        revert with 0, 'Error'
    if not stor121[address(arg1)]:
        revert with 0, 'Not listed'
    if not sub_75b67373[msg.sender][address(arg1)][1][arg2]:
        revert with 0, 'Not listed'
    if address(stor109[address(arg1)][arg2]) != msg.sender:
        revert with 0, 'Access denied'
    if not stor114[arg3]:
        revert with 0, 'bridging disabled'
    if not uint8(bridgeTransfer[stor118[msg.sender]].field_1536):
        if not sub_ef74bc0e:
            revert with 0, 'storage disabled'
        require ext_code.size(promosAddress)
        staticcall promosAddress.0x907ef7d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'storage disabled'
        require ext_code.size(gameAddress)
        call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, bridgeFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = msg.sender
        mem[128] = arg1
        mem[160] = block.number
        mem[192] = 0
        mem[224] = arg2
        mem[256] = arg3
        mem[288] = 1
        bridgeTransfers++
        address(bridgeTransfer[stor113 + 1].field_0) = msg.sender
        address(bridgeTransfer[stor113 + 1].field_256) = arg1
        bridgeTransfer[stor113 + 1].field_512 = block.number
        bridgeTransfer[stor113 + 1].field_768 = 0
        bridgeTransfer[stor113 + 1].field_1024 = arg2
        bridgeTransfer[stor113 + 1].field_1280 = arg3
        uint8(bridgeTransfer[stor113 + 1].field_1536) = 1
        bridgeTransfer[address(msg.sender)] = bridgeTransfers
        stor119[address(arg1)][arg2] = bridgeTransfers
        if 0 == nFTChainId[address(arg1)][arg2].length:
            if not arg2:
                mem[416] = uint256(sub_3440e7a9.field_0)
                idx = 416
                s = 0
                while sub_3440e7a9.length + 384 > idx:
                    mem[idx + 32] = sub_3440e7a9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[sub_3440e7a9.length + 416 len 0] = None
                mem[sub_3440e7a9.length + 447 len 1] = 0
                mem[sub_3440e7a9.length + 416 len 0] = 0
                nFTChainId[address(arg1)][arg2][] = Array(len=sub_3440e7a9.length + 1, data=mem[416 len sub_3440e7a9.length + 1])
                mem[sub_3440e7a9.length + 417 len floor32(sub_3440e7a9.length + 1)] = mem[416 len floor32(sub_3440e7a9.length + 1)]
                mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] = 256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1 and mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] or mem[floor32(sub_3440e7a9.length + 1) + 416 len sub_3440e7a9.length + -floor32(sub_3440e7a9.length + 1) + 31], 0, mem[sub_3440e7a9.length + 448 len -sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1)] and !(256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1)
                mem[(2 * sub_3440e7a9.length) + 418] = sha3(address(arg1), 134)
                stor[sha3(mem[stor137.length + 417 len 30], 0, mem[stor137.length + 448 len stor137.length + 2])] = arg2
            else:
                s = 0
                idx = arg2
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                require s <= test266151307()
                mem[320] = s
                mem[64] = ceil32(s) + 352
                if not s:
                    t = s - 1
                    idx = arg2
                    while idx:
                        require t < mem[320]
                        mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1065 = mem[64]
                    mem[0] = 137
                    mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                    idx = mem[64] + 32
                    s = 0
                    while _1065 + sub_3440e7a9.length > idx:
                        mem[idx + 32] = sub_3440e7a9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _2487 = mem[320]
                    mem[_1065 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                    mem[_1065 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                    _3183 = mem[64]
                    mem[mem[64]] = _2487 + _1065 + sub_3440e7a9.length - mem[64]
                    mem[64] = _2487 + _1065 + sub_3440e7a9.length + 32
                    mem[0] = arg2
                    mem[32] = sha3(address(arg1), 111)
                    _3349 = mem[_3183]
                    nFTChainId[address(arg1)][arg2][] = Array(len=_3349, data=mem[_3183 + 32 len _3349])
                    mem[0] = arg1
                    mem[32] = 134
                    _4040 = mem[_3183]
                    mem[_2487 + _1065 + sub_3440e7a9.length + 32 len floor32(mem[_3183])] = mem[_3183 + 32 len floor32(mem[_3183])]
                    mem[_2487 + _1065 + sub_3440e7a9.length + floor32(mem[_3183]) + 32] = 256^(-(mem[_3183] % 32) + 32) - 1 and mem[_2487 + _1065 + sub_3440e7a9.length + floor32(mem[_3183]) + 32] or mem[_3183 + floor32(mem[_3183]) + 32] and !(256^(-(mem[_3183] % 32) + 32) - 1)
                    mem[_2487 + _1065 + sub_3440e7a9.length + _4040 + 32] = sha3(address(arg1), 134)
                    stor[sha3(mem[_2487 + _1065 + stor137.length + 32 len _4040 + 32])] = arg2
                else:
                    mem[352 len s] = call.data[calldata.size len s]
                    t = s - 1
                    idx = arg2
                    while idx:
                        require t < mem[320]
                        mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1066 = mem[64]
                    mem[0] = 137
                    mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                    idx = mem[64] + 32
                    s = 0
                    while _1066 + sub_3440e7a9.length > idx:
                        mem[idx + 32] = sub_3440e7a9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _2488 = mem[320]
                    mem[_1066 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                    mem[_1066 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                    _3207 = mem[64]
                    mem[mem[64]] = _2488 + _1066 + sub_3440e7a9.length - mem[64]
                    mem[64] = _2488 + _1066 + sub_3440e7a9.length + 32
                    mem[0] = arg2
                    mem[32] = sha3(address(arg1), 111)
                    _3356 = mem[_3207]
                    nFTChainId[address(arg1)][arg2][] = Array(len=_3356, data=mem[_3207 + 32 len _3356])
                    mem[0] = arg1
                    mem[32] = 134
                    _4043 = mem[_3207]
                    mem[_2488 + _1066 + sub_3440e7a9.length + 32 len floor32(mem[_3207])] = mem[_3207 + 32 len floor32(mem[_3207])]
                    mem[_2488 + _1066 + sub_3440e7a9.length + floor32(mem[_3207]) + 32] = 256^(-(mem[_3207] % 32) + 32) - 1 and mem[_2488 + _1066 + sub_3440e7a9.length + floor32(mem[_3207]) + 32] or mem[_3207 + floor32(mem[_3207]) + 32] and !(256^(-(mem[_3207] % 32) + 32) - 1)
                    mem[_2488 + _1066 + sub_3440e7a9.length + _4043 + 32] = sha3(address(arg1), 134)
                    stor[sha3(mem[_2488 + _1066 + stor137.length + 32 len _4043 + 32])] = arg2
    else:
        if 3 == uint8(bridgeTransfer[stor118[msg.sender]].field_1536):
            if not sub_ef74bc0e:
                revert with 0, 'storage disabled'
            require ext_code.size(promosAddress)
            staticcall promosAddress.0x907ef7d5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'storage disabled'
            require ext_code.size(gameAddress)
            call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, bridgeFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = msg.sender
            mem[128] = arg1
            mem[160] = block.number
            mem[192] = 0
            mem[224] = arg2
            mem[256] = arg3
            mem[288] = 1
            bridgeTransfers++
            address(bridgeTransfer[stor113 + 1].field_0) = msg.sender
            address(bridgeTransfer[stor113 + 1].field_256) = arg1
            bridgeTransfer[stor113 + 1].field_512 = block.number
            bridgeTransfer[stor113 + 1].field_768 = 0
            bridgeTransfer[stor113 + 1].field_1024 = arg2
            bridgeTransfer[stor113 + 1].field_1280 = arg3
            uint8(bridgeTransfer[stor113 + 1].field_1536) = 1
            bridgeTransfer[address(msg.sender)] = bridgeTransfers
            stor119[address(arg1)][arg2] = bridgeTransfers
            if 0 == nFTChainId[address(arg1)][arg2].length:
                if not arg2:
                    mem[416] = uint256(sub_3440e7a9.field_0)
                    idx = 416
                    s = 0
                    while sub_3440e7a9.length + 384 > idx:
                        mem[idx + 32] = sub_3440e7a9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[sub_3440e7a9.length + 416 len 0] = None
                    mem[sub_3440e7a9.length + 447 len 1] = 0
                    mem[sub_3440e7a9.length + 416 len 0] = 0
                    nFTChainId[address(arg1)][arg2][] = Array(len=sub_3440e7a9.length + 1, data=mem[416 len sub_3440e7a9.length + 1])
                    mem[sub_3440e7a9.length + 417 len floor32(sub_3440e7a9.length + 1)] = mem[416 len floor32(sub_3440e7a9.length + 1)]
                    mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] = 256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1 and mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] or mem[floor32(sub_3440e7a9.length + 1) + 416 len sub_3440e7a9.length + -floor32(sub_3440e7a9.length + 1) + 31], 0, mem[sub_3440e7a9.length + 448 len -sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1)] and !(256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1)
                    mem[(2 * sub_3440e7a9.length) + 418] = sha3(address(arg1), 134)
                    stor[sha3(mem[stor137.length + 417 len 30], 0, mem[stor137.length + 448 len stor137.length + 2])] = arg2
                else:
                    s = 0
                    idx = arg2
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    require s <= test266151307()
                    mem[320] = s
                    mem[64] = ceil32(s) + 352
                    if not s:
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < mem[320]
                            mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _1071 = mem[64]
                        mem[0] = 137
                        mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                        idx = mem[64] + 32
                        s = 0
                        while _1071 + sub_3440e7a9.length > idx:
                            mem[idx + 32] = sub_3440e7a9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _2489 = mem[320]
                        mem[_1071 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                        mem[_1071 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                        _3241 = mem[64]
                        mem[mem[64]] = _2489 + _1071 + sub_3440e7a9.length - mem[64]
                        mem[64] = _2489 + _1071 + sub_3440e7a9.length + 32
                        mem[0] = arg2
                        mem[32] = sha3(address(arg1), 111)
                        _3365 = mem[_3241]
                        nFTChainId[address(arg1)][arg2][] = Array(len=_3365, data=mem[_3241 + 32 len _3365])
                        mem[0] = arg1
                        mem[32] = 134
                        _4046 = mem[_3241]
                        mem[_2489 + _1071 + sub_3440e7a9.length + 32 len floor32(mem[_3241])] = mem[_3241 + 32 len floor32(mem[_3241])]
                        mem[_2489 + _1071 + sub_3440e7a9.length + floor32(mem[_3241]) + 32] = 256^(-(mem[_3241] % 32) + 32) - 1 and mem[_2489 + _1071 + sub_3440e7a9.length + floor32(mem[_3241]) + 32] or mem[_3241 + floor32(mem[_3241]) + 32] and !(256^(-(mem[_3241] % 32) + 32) - 1)
                        mem[_2489 + _1071 + sub_3440e7a9.length + _4046 + 32] = sha3(address(arg1), 134)
                        stor[sha3(mem[_2489 + _1071 + stor137.length + 32 len _4046 + 32])] = arg2
                    else:
                        mem[352 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < mem[320]
                            mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _1072 = mem[64]
                        mem[0] = 137
                        mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                        idx = mem[64] + 32
                        s = 0
                        while _1072 + sub_3440e7a9.length > idx:
                            mem[idx + 32] = sub_3440e7a9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _2490 = mem[320]
                        mem[_1072 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                        mem[_1072 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                        _3265 = mem[64]
                        mem[mem[64]] = _2490 + _1072 + sub_3440e7a9.length - mem[64]
                        mem[64] = _2490 + _1072 + sub_3440e7a9.length + 32
                        mem[0] = arg2
                        mem[32] = sha3(address(arg1), 111)
                        _3372 = mem[_3265]
                        nFTChainId[address(arg1)][arg2][] = Array(len=_3372, data=mem[_3265 + 32 len _3372])
                        mem[0] = arg1
                        mem[32] = 134
                        _4049 = mem[_3265]
                        mem[_2490 + _1072 + sub_3440e7a9.length + 32 len floor32(mem[_3265])] = mem[_3265 + 32 len floor32(mem[_3265])]
                        mem[_2490 + _1072 + sub_3440e7a9.length + floor32(mem[_3265]) + 32] = 256^(-(mem[_3265] % 32) + 32) - 1 and mem[_2490 + _1072 + sub_3440e7a9.length + floor32(mem[_3265]) + 32] or mem[_3265 + floor32(mem[_3265]) + 32] and !(256^(-(mem[_3265] % 32) + 32) - 1)
                        mem[_2490 + _1072 + sub_3440e7a9.length + _4049 + 32] = sha3(address(arg1), 134)
                        stor[sha3(mem[_2490 + _1072 + stor137.length + 32 len _4049 + 32])] = arg2
        else:
            if uint8(bridgeTransfer[stor118[msg.sender]].field_1536) != 5:
                revert with 0, 'Cannot request a bridge'
            if not sub_ef74bc0e:
                revert with 0, 'storage disabled'
            require ext_code.size(promosAddress)
            staticcall promosAddress.0x907ef7d5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'storage disabled'
            require ext_code.size(gameAddress)
            call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, bridgeFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = msg.sender
            mem[128] = arg1
            mem[160] = block.number
            mem[192] = 0
            mem[224] = arg2
            mem[256] = arg3
            mem[288] = 1
            bridgeTransfers++
            address(bridgeTransfer[stor113 + 1].field_0) = msg.sender
            address(bridgeTransfer[stor113 + 1].field_256) = arg1
            bridgeTransfer[stor113 + 1].field_512 = block.number
            bridgeTransfer[stor113 + 1].field_768 = 0
            bridgeTransfer[stor113 + 1].field_1024 = arg2
            bridgeTransfer[stor113 + 1].field_1280 = arg3
            uint8(bridgeTransfer[stor113 + 1].field_1536) = 1
            bridgeTransfer[address(msg.sender)] = bridgeTransfers
            stor119[address(arg1)][arg2] = bridgeTransfers
            if 0 == nFTChainId[address(arg1)][arg2].length:
                if not arg2:
                    mem[416] = uint256(sub_3440e7a9.field_0)
                    idx = 416
                    s = 0
                    while sub_3440e7a9.length + 384 > idx:
                        mem[idx + 32] = sub_3440e7a9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[sub_3440e7a9.length + 416 len 0] = None
                    mem[sub_3440e7a9.length + 447 len 1] = 0
                    mem[sub_3440e7a9.length + 416 len 0] = 0
                    nFTChainId[address(arg1)][arg2][] = Array(len=sub_3440e7a9.length + 1, data=mem[416 len sub_3440e7a9.length + 1])
                    mem[sub_3440e7a9.length + 417 len floor32(sub_3440e7a9.length + 1)] = mem[416 len floor32(sub_3440e7a9.length + 1)]
                    mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] = 256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1 and mem[sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1) + 417] or mem[floor32(sub_3440e7a9.length + 1) + 416 len sub_3440e7a9.length + -floor32(sub_3440e7a9.length + 1) + 31], 0, mem[sub_3440e7a9.length + 448 len -sub_3440e7a9.length + floor32(sub_3440e7a9.length + 1)] and !(256^(-(sub_3440e7a9.length + 1 % 32) + 32) - 1)
                    mem[(2 * sub_3440e7a9.length) + 418] = sha3(address(arg1), 134)
                    stor[sha3(mem[stor137.length + 417 len 30], 0, mem[stor137.length + 448 len stor137.length + 2])] = arg2
                else:
                    s = 0
                    idx = arg2
                    while idx:
                        s = s + 1
                        idx = idx / 10
                        continue 
                    require s <= test266151307()
                    mem[320] = s
                    mem[64] = ceil32(s) + 352
                    if not s:
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < mem[320]
                            mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _1077 = mem[64]
                        mem[0] = 137
                        mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                        idx = mem[64] + 32
                        s = 0
                        while _1077 + sub_3440e7a9.length > idx:
                            mem[idx + 32] = sub_3440e7a9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _2491 = mem[320]
                        mem[_1077 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                        mem[_1077 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                        _3299 = mem[64]
                        mem[mem[64]] = _2491 + _1077 + sub_3440e7a9.length - mem[64]
                        mem[64] = _2491 + _1077 + sub_3440e7a9.length + 32
                        mem[0] = arg2
                        mem[32] = sha3(address(arg1), 111)
                        _3381 = mem[_3299]
                        nFTChainId[address(arg1)][arg2][] = Array(len=_3381, data=mem[_3299 + 32 len _3381])
                        mem[0] = arg1
                        mem[32] = 134
                        _4052 = mem[_3299]
                        mem[_2491 + _1077 + sub_3440e7a9.length + 32 len floor32(mem[_3299])] = mem[_3299 + 32 len floor32(mem[_3299])]
                        mem[_2491 + _1077 + sub_3440e7a9.length + floor32(mem[_3299]) + 32] = 256^(-(mem[_3299] % 32) + 32) - 1 and mem[_2491 + _1077 + sub_3440e7a9.length + floor32(mem[_3299]) + 32] or mem[_3299 + floor32(mem[_3299]) + 32] and !(256^(-(mem[_3299] % 32) + 32) - 1)
                        mem[_2491 + _1077 + sub_3440e7a9.length + _4052 + 32] = sha3(address(arg1), 134)
                        stor[sha3(mem[_2491 + _1077 + stor137.length + 32 len _4052 + 32])] = arg2
                    else:
                        mem[352 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg2
                        while idx:
                            require t < mem[320]
                            mem[t + 352 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _1078 = mem[64]
                        mem[0] = 137
                        mem[mem[64] + 32] = uint256(sub_3440e7a9.field_0)
                        idx = mem[64] + 32
                        s = 0
                        while _1078 + sub_3440e7a9.length > idx:
                            mem[idx + 32] = sub_3440e7a9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _2492 = mem[320]
                        mem[_1078 + sub_3440e7a9.length + 32 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                        mem[_1078 + sub_3440e7a9.length + floor32(mem[320]) + -(mem[320] % 32) + 64 len mem[320] % 32] = mem[floor32(mem[320]) + -(mem[320] % 32) + 384 len mem[320] % 32]
                        _3323 = mem[64]
                        mem[mem[64]] = _2492 + _1078 + sub_3440e7a9.length - mem[64]
                        mem[64] = _2492 + _1078 + sub_3440e7a9.length + 32
                        mem[0] = arg2
                        mem[32] = sha3(address(arg1), 111)
                        _3388 = mem[_3323]
                        nFTChainId[address(arg1)][arg2][] = Array(len=_3388, data=mem[_3323 + 32 len _3388])
                        mem[0] = arg1
                        mem[32] = 134
                        _4055 = mem[_3323]
                        mem[_2492 + _1078 + sub_3440e7a9.length + 32 len floor32(mem[_3323])] = mem[_3323 + 32 len floor32(mem[_3323])]
                        mem[_2492 + _1078 + sub_3440e7a9.length + floor32(mem[_3323]) + 32] = 256^(-(mem[_3323] % 32) + 32) - 1 and mem[_2492 + _1078 + sub_3440e7a9.length + floor32(mem[_3323]) + 32] or mem[_3323 + floor32(mem[_3323]) + 32] and !(256^(-(mem[_3323] % 32) + 32) - 1)
                        mem[_2492 + _1078 + sub_3440e7a9.length + _4055 + 32] = sha3(address(arg1), 134)
                        stor[sha3(mem[_2492 + _1078 + stor137.length + 32 len _4055 + 32])] = arg2
    emit 0x3bf078f7: msg.sender, arg1, arg2
}

function updateBridgeTransferStatus(uint256 arg1, uint8 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NGA'
    if arg3:
        uint8(bridgeTransfer[arg1].field_1536) = arg2
        bridgeTransfer[arg1].field_768 = block.number
        if 3 == arg2:
            if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
            if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                require stor110[address(stor117[arg1].field_256)]
                stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                stor110[address(stor117[arg1].field_256)]--
                stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
            address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
    else:
        if uint8(bridgeTransfer[arg1].field_1536) != 1:
            if uint8(bridgeTransfer[arg1].field_1536) != 2:
                if arg2 != 4:
                    revert with 0, 'Invalid status change'
                uint8(bridgeTransfer[arg1].field_1536) = arg2
                bridgeTransfer[arg1].field_768 = block.number
                if 3 == arg2:
                    if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                        require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                        stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                        stor110[address(stor117[arg1].field_256)]--
                        stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
            else:
                if 3 == arg2:
                    uint8(bridgeTransfer[arg1].field_1536) = arg2
                    bridgeTransfer[arg1].field_768 = block.number
                    if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                        require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                        stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                        stor110[address(stor117[arg1].field_256)]--
                        stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
                else:
                    if arg2 != 4:
                        revert with 0, 'Invalid status change'
                    uint8(bridgeTransfer[arg1].field_1536) = arg2
                    bridgeTransfer[arg1].field_768 = block.number
                    if 3 == arg2:
                        if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                            require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                            stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                            stor110[address(stor117[arg1].field_256)]--
                            stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
        else:
            if 2 == arg2:
                uint8(bridgeTransfer[arg1].field_1536) = arg2
                bridgeTransfer[arg1].field_768 = block.number
                if 3 == arg2:
                    if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                        sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                        require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                        require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                        stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                        require stor110[address(stor117[arg1].field_256)]
                        stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                        stor110[address(stor117[arg1].field_256)]--
                        stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                    address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
            else:
                if uint8(bridgeTransfer[arg1].field_1536) != 2:
                    if arg2 != 4:
                        revert with 0, 'Invalid status change'
                    uint8(bridgeTransfer[arg1].field_1536) = arg2
                    bridgeTransfer[arg1].field_768 = block.number
                    if 3 == arg2:
                        if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                            require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                            stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                            stor110[address(stor117[arg1].field_256)]--
                            stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
                else:
                    if 3 == arg2:
                        uint8(bridgeTransfer[arg1].field_1536) = arg2
                        bridgeTransfer[arg1].field_768 = block.number
                        if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                            sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                            require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                            require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                            stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                            require stor110[address(stor117[arg1].field_256)]
                            stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                            stor110[address(stor117[arg1].field_256)]--
                            stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                        address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
                    else:
                        if arg2 != 4:
                            revert with 0, 'Invalid status change'
                        uint8(bridgeTransfer[arg1].field_1536) = arg2
                        bridgeTransfer[arg1].field_768 = block.number
                        if 3 == arg2:
                            if sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]
                                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]]] = sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                                require sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]
                                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]] = 0
                                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)]--
                                sub_75b67373[address(stor117[arg1].field_0)][address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                            if stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]:
                                require stor110[address(stor117[arg1].field_256)] - 1 < stor110[address(stor117[arg1].field_256)]
                                require stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] - 1 < stor110[address(stor117[arg1].field_256)]
                                stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]] = stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]
                                stor110[address(stor117[arg1].field_256)][1][stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]]] = stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024]
                                require stor110[address(stor117[arg1].field_256)]
                                stor110[address(stor117[arg1].field_256)][stor110[address(stor117[arg1].field_256)]] = 0
                                stor110[address(stor117[arg1].field_256)]--
                                stor110[address(stor117[arg1].field_256)][1][stor117[arg1].field_1024] = 0
                            address(stor109[address(stor117[arg1].field_256)][stor117[arg1].field_1024]) = 0
    emit NFTTransferUpdate(arg2 << 248, arg3, arg1);
}



}
