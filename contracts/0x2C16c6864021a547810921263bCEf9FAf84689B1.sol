contract main {




// =====================  Runtime code  =====================


const sub_09331d39(?) = 4096

const sub_0a086d70(?) = 8

const sub_0f285dfb(?) = 2048

const sub_14863a4e(?) = 256

const sub_70ca8eee(?) = 4

const sub_74a3c35e(?) = 16384

const sub_7ff5e4c9(?) = 64

const sub_8b69d228(?) = 512

const sub_9307e447(?) = 1024

const sub_b22a0f65(?) = 16

const sub_b9da8f25(?) = 128

const sub_f7455aea(?) = 32

const KYC = 1

const AML = 2

const POOL_ADDRESS = 8192


address registryAddress;
address implementationAddress;
address primaryOwner;
address authorityAddress;
address newAuthorityAddress;
uint8 stor5; offset 160
address systemAddress;
address contractsRegistryAddress;
address auctionAddress;
uint256 stor7;
mapping of address address_belongs;
mapping of struct sub_631aa829;
array of struct sub_64a522a5;
mapping of uint256 sub_173b6923;
mapping of uint256 sub_7fa52a8b;
mapping of uint256 sub_e0672c51;
uint256 stor10A8;
uint256 stor5D60;

function newAuthorityAddress() {
    return newAuthorityAddress
}

function sub_173b6923(?) {
    require calldata.size - 4 >= 32
    return sub_173b6923[arg1]
}

function authorityAddress() {
    return authorityAddress
}

function sub_3ff59a52(?) {
    return bool(stor5)
}

function auctionAddress() {
    return address(auctionAddress)
}

function address_belongs(address arg1) {
    require calldata.size - 4 >= 32
    return address_belongs[arg1]
}

function implementation() {
    return implementationAddress
}

function sub_631aa829(?) {
    require calldata.size - 4 >= 32
    return sub_631aa829[arg1].field_0, sub_631aa829[arg1].field_256
}

function sub_64a522a5(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_64a522a5[arg1].field_0
    return sub_64a522a5[arg1][arg2].field_0, 
           sub_64a522a5[arg1][arg2].field_256,
           sub_64a522a5[arg1][arg2].field_512,
           sub_64a522a5[arg1][arg2].field_768
}

function registry() {
    return registryAddress
}

function sub_7fa52a8b(?) {
    require calldata.size - 4 >= 32
    return sub_7fa52a8b[arg1]
}

function primaryOwner() {
    return primaryOwner
}

function systemAddress() {
    return systemAddress
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function sub_e0672c51(?) {
    require calldata.size - 4 >= 32
    return sub_e0672c51[arg1]
}

function sub_e128a991(?) {
    require calldata.size - 4 >= 32
    return sub_e128a991[arg1].field_0, sub_e128a991[arg1].field_256
}

function initialize() {
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
}

function isWhiteListed(address arg1) {
    require calldata.size - 4 >= 32
    if address_belongs[address(arg1)]:
        return 1
    else:
        return 0
}

function sub_a4cad423(?) {
    require calldata.size - 4 >= 64
    if arg2 != arg2 and sub_e128a991[stor8[address(arg1)]].field_0:
        return 0
    return 1
}

function sub_6c7d3081(?) {
    require calldata.size - 4 >= 32
    if Mask(1, 12, sub_e128a991[stor8[address(arg1)]].field_0) != 4096:
        return 0
    return 1
}

function sub_c4927578(?) {
    require calldata.size - 4 >= 32
    if Mask(1, 14, sub_e128a991[stor8[address(arg1)]].field_0) != 16384:
        return 0
    return 1
}

function isExchangeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 6, sub_e128a991[stor8[address(arg1)]].field_0) != 64:
        return 0
    return 1
}

function sub_7b94888c(?) {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_631aa829[0].field_0 = arg1
    sub_631aa829[0].field_256 = arg2
}

function sub_cd79027d(?) {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_631aa829[2].field_0 = arg1
    sub_631aa829[2].field_256 = arg2
}

function sub_cf5fd668(?) {
    require calldata.size - 4 >= 64
    if Mask(1, 16, sub_e128a991[msg.sender].field_0) != 65536:
        revert with 0, 'ERR_NOT_ALLOWED'
    sub_e0672c51[address(arg1)] = arg2
    return 1
}

function sub_feb9de8e(?) {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_631aa829[1].field_0 = arg1
    sub_631aa829[1].field_256 = arg2
}

function changePrimaryOwner() {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function acceptAuthorityAddress() {
    if newAuthorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function sub_3c0c4400(?) {
    require calldata.size - 4 >= 32
    if not address_belongs[address(arg1)]:
        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
    if sub_631aa829[2].field_256 != sub_631aa829[2].field_0 and sub_e128a991[stor8[address(arg1)]].field_0:
        return 0
    return 1
}

function sub_47d2c085(?) {
    require calldata.size - 4 >= 32
    if not address_belongs[address(arg1)]:
        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
    if sub_631aa829[1].field_256 != sub_631aa829[1].field_0 and sub_e128a991[stor8[address(arg1)]].field_0:
        return 0
    return 1
}

function sub_9bd10587(?) {
    require calldata.size - 4 >= 32
    if not address_belongs[address(arg1)]:
        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
    if sub_631aa829[0].field_256 != sub_631aa829[0].field_0 and sub_e128a991[stor8[address(arg1)]].field_0:
        return 0
    return 1
}

function sub_82747d43(?) {
    require calldata.size - 4 >= 64
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not address_belongs[address(arg1)]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_e128a991[address(arg1)].field_256 = arg2
    return 1
}

function sub_e7dc9b91(?) {
    require calldata.size - 4 >= 64
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not address_belongs[address(arg1)]:
        revert with 0, 'ERR_ACTION_NOT_ALLOWED'
    sub_e128a991[stor8[address(arg1)]].field_0 = arg2
    emit 0xb388a0ed: arg2, arg1
    return 1
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'ERR_IMPLEMENTEION_ZERO'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function changeAuthorityAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function sub_3a473eac(?) {
    require calldata.size - 4 >= 128
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_64a522a5[1].field_0++
    sub_64a522a5[1][sub_64a522a5[1].field_0].field_0 = arg1
    sub_64a522a5[1][sub_64a522a5[1].field_0].field_256 = arg2
    sub_64a522a5[1][sub_64a522a5[1].field_0].field_512 = arg3
    sub_64a522a5[1][sub_64a522a5[1].field_0].field_768 = arg4
}

function sub_a851e245(?) {
    require calldata.size - 4 >= 128
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_64a522a5[2].field_0++
    sub_64a522a5[2][sub_64a522a5[2].field_0].field_0 = arg1
    sub_64a522a5[2][sub_64a522a5[2].field_0].field_256 = arg2
    sub_64a522a5[2][sub_64a522a5[2].field_0].field_512 = arg3
    sub_64a522a5[2][sub_64a522a5[2].field_0].field_768 = arg4
}

function sub_c546aa7f(?) {
    require calldata.size - 4 >= 128
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_64a522a5[0].field_0++
    sub_64a522a5[0][sub_64a522a5[0].field_0].field_0 = arg1
    sub_64a522a5[0][sub_64a522a5[0].field_0].field_256 = arg2
    sub_64a522a5[0][sub_64a522a5[0].field_0].field_512 = arg3
    sub_64a522a5[0][sub_64a522a5[0].field_0].field_768 = arg4
}

function sub_a23a0fee(?) {
    require calldata.size - 4 >= 64
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg2:
        sub_173b6923[arg1 << 248] = 0
    else:
        require 24 * 3600 * arg2 / 24 * 3600 == arg2
        require (24 * 3600 * arg2) + block.timestamp >= block.timestamp
        sub_173b6923[arg1 << 248] = (24 * 3600 * arg2) + block.timestamp
    return 1
}

function sub_e889a363(?) {
    require calldata.size - 4 >= 64
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg2:
        sub_7fa52a8b[arg1 << 248] = 0
    else:
        require 24 * 3600 * arg2 / 24 * 3600 == arg2
        require (24 * 3600 * arg2) + block.timestamp >= block.timestamp
        sub_7fa52a8b[arg1 << 248] = (24 * 3600 * arg2) + block.timestamp
    return 1
}

function sub_a156fab3(?) {
    require calldata.size - 4 >= 96
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if address_belongs[address(arg1)]:
        revert with 0, 'ERR_ACTION_NOT_ALLOWED'
    sub_e128a991[address(arg1)].field_0 = arg2
    sub_e128a991[address(arg1)].field_256 = arg3
    address_belongs[address(arg1)] = arg1
    emit 0x48b31fff: arg2, arg1
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 1
}

function changeSystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if this.address == arg1:
        revert with 0, 'ERR_CONTRACT_SELF_ADDRESS'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    emit 0x6840904f: 'SYSTEM_ADDRESS', systemAddress, arg1
    systemAddress = arg1
    return 1
}

function updateRegistery(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    contractsRegistryAddress = arg1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    return 1
}

function sub_74857c05(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if address_belongs[address(arg1)]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not address_belongs[address_belongs[address(msg.sender)]]:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if address_belongs[address(msg.sender)] != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if sub_e128a991[stor8[address(msg.sender)]].field_256 <= sub_e128a991[stor8[address(msg.sender)]].field_512:
        revert with 0, 'ERR_MAXIMUM_WALLET_LIMIT'
    address_belongs[address(arg1)] = address_belongs[address(msg.sender)]
    sub_e128a991[stor8[address(msg.sender)]].field_512++
    stor[sub_e128a991[stor8[address(msg.sender)]].field_512 + ('array', 2, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor8', 8))), ('name', 'sub_e128a991', 9)))].field_0 = arg1
    emit 0x51e7a5ff: address_belongs[address(msg.sender)], arg1
    return 1
}

function sub_7f07f17b(?) {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if address(auctionAddress) != msg.sender:
        revert with 0, 'ERR_ONLY_AUCTION_ADDRESS_ALLOWED'
    if not arg1:
        sub_e128a991[address(arg2)].field_0 = 16384
        sub_e128a991[address(arg2)].field_256 = 10
        address_belongs[address(arg2)] = arg2
        emit 0x48b31fff: 16384, arg2
    else:
        if address_belongs[address(arg2)]:
            revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
        if not address_belongs[address_belongs[address(arg1)]]:
            revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
        if arg1 != address_belongs[address(arg1)]:
            revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
        if sub_e128a991[stor8[address(arg1)]].field_256 <= sub_e128a991[stor8[address(arg1)]].field_512:
            revert with 0, 'ERR_MAXIMUM_WALLET_LIMIT'
        address_belongs[address(arg2)] = address_belongs[address(arg1)]
        sub_e128a991[stor8[address(arg1)]].field_512++
        stor[sub_e128a991[stor8[address(arg1)]].field_512 + ('array', 2, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor8', 8))), ('name', 'sub_e128a991', 9)))].field_0 = arg2
        emit 0x51e7a5ff: address_belongs[address(arg1)], arg2
    return 1
}

function getUserWallets(address arg1) {
    require calldata.size - 4 >= 32
    if not sub_e128a991[stor8[address(arg1)]].field_512:
        mem[(32 * sub_e128a991[stor8[address(arg1)]].field_512) + 128] = 32
        mem[(32 * sub_e128a991[stor8[address(arg1)]].field_512) + 160] = sub_e128a991[stor8[address(arg1)]].field_512
        mem[(32 * sub_e128a991[stor8[address(arg1)]].field_512) + 192 len floor32(sub_e128a991[stor8[address(arg1)]].field_512)] = mem[128 len floor32(sub_e128a991[stor8[address(arg1)]].field_512)]
        return memory
          from (32 * sub_e128a991[stor8[address(arg1)]].field_512) + 128
           len (96 * sub_e128a991[stor8[address(arg1)]].field_512) + 64
    mem[128] = sub_e128a991[stor8[address(arg1)]][2].field_0
    idx = 128
    s = 0
    while (32 * sub_e128a991[stor8[address(arg1)]].field_512) + 96 > idx:
        mem[idx + 32] = sub_e128a991[stor8[address(arg1)]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e128a991[stor8[address(arg1)]].field_512) + 192 len floor32(sub_e128a991[stor8[address(arg1)]].field_512)] = mem[128 len floor32(sub_e128a991[stor8[address(arg1)]].field_512)]
    return Array(len=sub_e128a991[stor8[address(arg1)]].field_512, data=mem[128 len floor32(sub_e128a991[stor8[address(arg1)]].field_512)], mem[(32 * sub_e128a991[stor8[address(arg1)]].field_512) + floor32(sub_e128a991[stor8[address(arg1)]].field_512) + 192 len (32 * sub_e128a991[stor8[address(arg1)]].field_512) - floor32(sub_e128a991[stor8[address(arg1)]].field_512)]), 
}

function sub_0d65004c(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= sub_64a522a5[0].field_0:
        revert with 0, 'CHECK_ARRAY_INDEX'
    require 1 <= sub_64a522a5[0].field_0
    require sub_64a522a5[0].field_0 - 1 < sub_64a522a5[0].field_0
    require arg1 < sub_64a522a5[0].field_0
    sub_64a522a5[0][arg1].field_0 = sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_0
    sub_64a522a5[0][arg1].field_256 = sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_256
    sub_64a522a5[0][arg1].field_512 = sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_512
    sub_64a522a5[0][arg1].field_768 = sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_768
    require 1 <= sub_64a522a5[0].field_0
    require sub_64a522a5[0].field_0 - 1 < sub_64a522a5[0].field_0
    sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_0 = 0
    sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_256 = 0
    sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_512 = 0
    sub_64a522a5[0][sub_64a522a5[0].field_0 - 1].field_768 = 0
    require 1 <= sub_64a522a5[0].field_0
    sub_64a522a5[0].field_0--
    if sub_64a522a5[0].field_0 > sub_64a522a5[0].field_0 - 1:
        idx = 4 * sub_64a522a5[0].field_0 - 1
        while 4 * sub_64a522a5[0].field_0 > idx:
            sub_64a522a5[0][idx].field_0 = 0
            sub_64a522a5[0][idx].field_256 = 0
            sub_64a522a5[0][idx].field_512 = 0
            sub_64a522a5[0][idx].field_768 = 0
            idx = idx + 4
            continue 
}

function sub_26eaa444(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= sub_64a522a5[1].field_0:
        revert with 0, 'CHECK_ARRAY_INDEX'
    require 1 <= sub_64a522a5[1].field_0
    require sub_64a522a5[1].field_0 - 1 < sub_64a522a5[1].field_0
    require arg1 < sub_64a522a5[1].field_0
    sub_64a522a5[1][arg1].field_0 = sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_0
    sub_64a522a5[1][arg1].field_256 = sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_256
    sub_64a522a5[1][arg1].field_512 = sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_512
    sub_64a522a5[1][arg1].field_768 = sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_768
    require 1 <= sub_64a522a5[1].field_0
    require sub_64a522a5[1].field_0 - 1 < sub_64a522a5[1].field_0
    sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_0 = 0
    sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_256 = 0
    sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_512 = 0
    sub_64a522a5[1][sub_64a522a5[1].field_0 - 1].field_768 = 0
    require 1 <= sub_64a522a5[1].field_0
    sub_64a522a5[1].field_0--
    if sub_64a522a5[1].field_0 > sub_64a522a5[1].field_0 - 1:
        idx = 4 * sub_64a522a5[1].field_0 - 1
        while 4 * sub_64a522a5[1].field_0 > idx:
            sub_64a522a5[1][idx].field_0 = 0
            sub_64a522a5[1][idx].field_256 = 0
            sub_64a522a5[1][idx].field_512 = 0
            sub_64a522a5[1][idx].field_768 = 0
            idx = idx + 4
            continue 
}

function sub_43417595(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= sub_64a522a5[2].field_0:
        revert with 0, 'CHECK_ARRAY_INDEX'
    require 1 <= sub_64a522a5[2].field_0
    require sub_64a522a5[2].field_0 - 1 < sub_64a522a5[2].field_0
    require arg1 < sub_64a522a5[2].field_0
    sub_64a522a5[2][arg1].field_0 = sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_0
    sub_64a522a5[2][arg1].field_256 = sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_256
    sub_64a522a5[2][arg1].field_512 = sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_512
    sub_64a522a5[2][arg1].field_768 = sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_768
    require 1 <= sub_64a522a5[2].field_0
    require sub_64a522a5[2].field_0 - 1 < sub_64a522a5[2].field_0
    sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_0 = 0
    sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_256 = 0
    sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_512 = 0
    sub_64a522a5[2][sub_64a522a5[2].field_0 - 1].field_768 = 0
    require 1 <= sub_64a522a5[2].field_0
    sub_64a522a5[2].field_0--
    if sub_64a522a5[2].field_0 > sub_64a522a5[2].field_0 - 1:
        idx = 4 * sub_64a522a5[2].field_0 - 1
        while 4 * sub_64a522a5[2].field_0 > idx:
            sub_64a522a5[2][idx].field_0 = 0
            sub_64a522a5[2][idx].field_256 = 0
            sub_64a522a5[2][idx].field_512 = 0
            sub_64a522a5[2][idx].field_768 = 0
            idx = idx + 4
            continue 
}

function sub_6436efca(?) {
    require calldata.size - 4 >= 320
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg3:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if stor5:
        revert with 0, 'ERR_OWNER_INTIALIZED_ALREADY'
    if arg1 == arg2:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg2 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg1 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    primaryOwner = arg1
    authorityAddress = arg3
    systemAddress = arg2
    stor5 = 1
    contractsRegistryAddress = arg10
    if not arg7:
        sub_7fa52a8b[0] = 0
    else:
        require 24 * 3600 * arg7 / 24 * 3600 == arg7
        require (24 * 3600 * arg7) + block.timestamp >= block.timestamp
        sub_7fa52a8b[0] = (24 * 3600 * arg7) + block.timestamp
    if not arg8:
        sub_7fa52a8b[1] = 0
    else:
        require 24 * 3600 * arg8 / 24 * 3600 == arg8
        require (24 * 3600 * arg8) + block.timestamp >= block.timestamp
        sub_7fa52a8b[1] = (24 * 3600 * arg8) + block.timestamp
    if not arg9:
        stor10A8 = 0
    else:
        require 24 * 3600 * arg9 / 24 * 3600 == arg9
        require (24 * 3600 * arg9) + block.timestamp >= block.timestamp
        stor10A8 = (24 * 3600 * arg9) + block.timestamp
    if not arg4:
        sub_173b6923[0] = 0
    else:
        require 24 * 3600 * arg4 / 24 * 3600 == arg4
        require (24 * 3600 * arg4) + block.timestamp >= block.timestamp
        sub_173b6923[0] = (24 * 3600 * arg4) + block.timestamp
    if not arg5:
        sub_173b6923[1] = 0
    else:
        require 24 * 3600 * arg5 / 24 * 3600 == arg5
        require (24 * 3600 * arg5) + block.timestamp >= block.timestamp
        sub_173b6923[1] = (24 * 3600 * arg5) + block.timestamp
    if not arg6:
        stor5D60 = 0
    else:
        require 24 * 3600 * arg6 / 24 * 3600 == arg6
        require (24 * 3600 * arg6) + block.timestamp >= block.timestamp
        stor5D60 = (24 * 3600 * arg6) + block.timestamp
}

function sub_0f4b4f01(?) {
    require calldata.size - 4 >= 96
    if not address_belongs[arg2]:
        revert with 0, 'ERR_TRANSFER_CHECK_WHITELIST'
    if sub_e128a991[stor8[arg2]].field_0 != 3:
        revert with 0, 'ERR_KYC_AML_NOT_PASSED'
    if block.timestamp <= sub_e0672c51[address(arg2)]:
        revert with 0, 'ERR_WALLET_LOCKED'
    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
        if Mask(1, 12, sub_e128a991[stor8[stor8[arg1]]].field_0) != 4096:
            if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                        return 0
                else:
                    if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                            return 0
            else:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                    return 0
                if not address_belongs[address(arg3)]:
                    revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                if sub_631aa829[1].field_256 != sub_631aa829[1].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                    revert with 0, 'ERR_RECEIVE_DISALLOWED'
                if sub_7fa52a8b[1]:
                    if block.timestamp >= sub_7fa52a8b[1]:
                        revert with 0, 'ERR_TOKEN_MATURED'
                if sub_173b6923[1]:
                    if block.timestamp < sub_173b6923[1]:
                        revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                idx = 0
                while idx < sub_64a522a5[1].field_0:
                    require idx < sub_64a522a5[1].field_0
                    require idx < sub_64a522a5[1].field_0
                    if sub_64a522a5[1][idx].field_256 == sub_64a522a5[1][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                        require idx < sub_64a522a5[1].field_0
                        require idx < sub_64a522a5[1].field_0
                        if sub_64a522a5[1][idx].field_768 == sub_64a522a5[1][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                            return 0
                    mem[0] = 1
                    mem[32] = 11
                    idx = idx + 1
                    continue 
        else:
            if address_belongs[address(arg3)]:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[1].field_256 != sub_631aa829[1].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[1]:
                        if block.timestamp >= sub_7fa52a8b[1]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[1]:
                        if block.timestamp < sub_173b6923[1]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    while idx < sub_64a522a5[1].field_0:
                        require idx < sub_64a522a5[1].field_0
                        require idx < sub_64a522a5[1].field_0
                        if sub_64a522a5[1][idx].field_256 == sub_64a522a5[1][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[1].field_0
                            require idx < sub_64a522a5[1].field_0
                            if sub_64a522a5[1][idx].field_768 == sub_64a522a5[1][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                                return 0
                        mem[0] = 1
                        mem[32] = 11
                        idx = idx + 1
                        continue 
            else:
                sub_e128a991[address(arg3)].field_0 = 16384
                sub_e128a991[address(arg3)].field_256 = 10
                address_belongs[address(arg3)] = arg3
                emit 0x48b31fff: 16384, arg3
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg3)]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[1].field_256 != sub_631aa829[1].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[1]:
                        if block.timestamp >= sub_7fa52a8b[1]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[1]:
                        if block.timestamp < sub_173b6923[1]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    s = 1
                    while idx < sub_64a522a5[1].field_0:
                        require idx < sub_64a522a5[1].field_0
                        require idx < sub_64a522a5[1].field_0
                        if sub_64a522a5[1][idx].field_256 == sub_64a522a5[1][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[1].field_0
                            require idx < sub_64a522a5[1].field_0
                            if sub_64a522a5[1][idx].field_768 == sub_64a522a5[1][idx].field_512 and sub_e128a991[address(arg3)].field_0:
                                return 0
                        mem[0] = 1
                        mem[32] = 11
                        idx = idx + 1
                        s = 0
                        continue 
    return 1
}

function sub_2f31857c(?) {
    require calldata.size - 4 >= 96
    if not address_belongs[arg2]:
        revert with 0, 'ERR_TRANSFER_CHECK_WHITELIST'
    if sub_e128a991[stor8[arg2]].field_0 != 3:
        revert with 0, 'ERR_KYC_AML_NOT_PASSED'
    if block.timestamp <= sub_e0672c51[address(arg2)]:
        revert with 0, 'ERR_WALLET_LOCKED'
    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
        if Mask(1, 12, sub_e128a991[stor8[stor8[arg1]]].field_0) != 4096:
            if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                        return 0
                else:
                    if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                            return 0
            else:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                    return 0
                if not address_belongs[address(arg3)]:
                    revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                if sub_631aa829[2].field_256 != sub_631aa829[2].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                    revert with 0, 'ERR_RECEIVE_DISALLOWED'
                if sub_7fa52a8b[2]:
                    if block.timestamp >= sub_7fa52a8b[2]:
                        revert with 0, 'ERR_TOKEN_MATURED'
                if sub_173b6923[2]:
                    if block.timestamp < sub_173b6923[2]:
                        revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                idx = 0
                while idx < sub_64a522a5[2].field_0:
                    require idx < sub_64a522a5[2].field_0
                    require idx < sub_64a522a5[2].field_0
                    if sub_64a522a5[2][idx].field_256 == sub_64a522a5[2][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                        require idx < sub_64a522a5[2].field_0
                        require idx < sub_64a522a5[2].field_0
                        if sub_64a522a5[2][idx].field_768 == sub_64a522a5[2][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                            return 0
                    mem[0] = 2
                    mem[32] = 11
                    idx = idx + 1
                    continue 
        else:
            if address_belongs[address(arg3)]:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[2].field_256 != sub_631aa829[2].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[2]:
                        if block.timestamp >= sub_7fa52a8b[2]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[2]:
                        if block.timestamp < sub_173b6923[2]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    while idx < sub_64a522a5[2].field_0:
                        require idx < sub_64a522a5[2].field_0
                        require idx < sub_64a522a5[2].field_0
                        if sub_64a522a5[2][idx].field_256 == sub_64a522a5[2][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[2].field_0
                            require idx < sub_64a522a5[2].field_0
                            if sub_64a522a5[2][idx].field_768 == sub_64a522a5[2][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                                return 0
                        mem[0] = 2
                        mem[32] = 11
                        idx = idx + 1
                        continue 
            else:
                sub_e128a991[address(arg3)].field_0 = 16384
                sub_e128a991[address(arg3)].field_256 = 10
                address_belongs[address(arg3)] = arg3
                emit 0x48b31fff: 16384, arg3
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg3)]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[2].field_256 != sub_631aa829[2].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[2]:
                        if block.timestamp >= sub_7fa52a8b[2]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[2]:
                        if block.timestamp < sub_173b6923[2]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    s = 1
                    while idx < sub_64a522a5[2].field_0:
                        require idx < sub_64a522a5[2].field_0
                        require idx < sub_64a522a5[2].field_0
                        if sub_64a522a5[2][idx].field_256 == sub_64a522a5[2][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[2].field_0
                            require idx < sub_64a522a5[2].field_0
                            if sub_64a522a5[2][idx].field_768 == sub_64a522a5[2][idx].field_512 and sub_e128a991[address(arg3)].field_0:
                                return 0
                        mem[0] = 2
                        mem[32] = 11
                        idx = idx + 1
                        s = 0
                        continue 
    return 1
}

function sub_7aab665b(?) {
    require calldata.size - 4 >= 96
    if not address_belongs[arg2]:
        revert with 0, 'ERR_TRANSFER_CHECK_WHITELIST'
    if sub_e128a991[stor8[arg2]].field_0 != 3:
        revert with 0, 'ERR_KYC_AML_NOT_PASSED'
    if block.timestamp <= sub_e0672c51[address(arg2)]:
        revert with 0, 'ERR_WALLET_LOCKED'
    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
        if Mask(1, 12, sub_e128a991[stor8[stor8[arg1]]].field_0) != 4096:
            if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                    if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                        return 0
                else:
                    if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                            return 0
            else:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                    return 0
                if not address_belongs[address(arg3)]:
                    revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                if sub_631aa829[0].field_256 != sub_631aa829[0].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                    revert with 0, 'ERR_RECEIVE_DISALLOWED'
                if sub_7fa52a8b[0]:
                    if block.timestamp >= sub_7fa52a8b[0]:
                        revert with 0, 'ERR_TOKEN_MATURED'
                if sub_173b6923[0]:
                    if block.timestamp < sub_173b6923[0]:
                        revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                idx = 0
                while idx < sub_64a522a5[0].field_0:
                    require idx < sub_64a522a5[0].field_0
                    require idx < sub_64a522a5[0].field_0
                    if sub_64a522a5[0][idx].field_256 == sub_64a522a5[0][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                        require idx < sub_64a522a5[0].field_0
                        require idx < sub_64a522a5[0].field_0
                        if sub_64a522a5[0][idx].field_768 == sub_64a522a5[0][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                            return 0
                    mem[0] = 0
                    mem[32] = 11
                    idx = idx + 1
                    continue 
        else:
            if address_belongs[address(arg3)]:
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[stor8[address(arg3)]]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[address(arg3)]]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[0].field_256 != sub_631aa829[0].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[0]:
                        if block.timestamp >= sub_7fa52a8b[0]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[0]:
                        if block.timestamp < sub_173b6923[0]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    while idx < sub_64a522a5[0].field_0:
                        require idx < sub_64a522a5[0].field_0
                        require idx < sub_64a522a5[0].field_0
                        if sub_64a522a5[0][idx].field_256 == sub_64a522a5[0][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[0].field_0
                            require idx < sub_64a522a5[0].field_0
                            if sub_64a522a5[0][idx].field_768 == sub_64a522a5[0][idx].field_512 and sub_e128a991[stor8[address(arg3)]].field_0:
                                return 0
                        mem[0] = 0
                        mem[32] = 11
                        idx = idx + 1
                        continue 
            else:
                sub_e128a991[address(arg3)].field_0 = 16384
                sub_e128a991[address(arg3)].field_256 = 10
                address_belongs[address(arg3)] = arg3
                emit 0x48b31fff: 16384, arg3
                if 8192 == Mask(1, 13, sub_e128a991[stor8[stor8[arg1]]].field_0):
                    if Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0) != 8192:
                        if Mask(1, 12, sub_e128a991[stor8[address(arg3)]].field_0) != 4096:
                            return 0
                    else:
                        if Mask(1, 13, sub_e128a991[stor8[address(arg2)]].field_0) != 8192:
                            if Mask(1, 12, sub_e128a991[stor8[address(arg2)]].field_0) != 4096:
                                return 0
                else:
                    if 8192 == Mask(1, 13, sub_e128a991[stor8[address(arg3)]].field_0):
                        return 0
                    if not address_belongs[address(arg3)]:
                        revert with 0, 'ERR_RECIVER_NOT_WHITLISTED'
                    if sub_631aa829[0].field_256 != sub_631aa829[0].field_0 and sub_e128a991[stor8[address(arg3)]].field_0:
                        revert with 0, 'ERR_RECEIVE_DISALLOWED'
                    if sub_7fa52a8b[0]:
                        if block.timestamp >= sub_7fa52a8b[0]:
                            revert with 0, 'ERR_TOKEN_MATURED'
                    if sub_173b6923[0]:
                        if block.timestamp < sub_173b6923[0]:
                            revert with 0, 'ERR_TOKEN_HOLDBACK_NOT_OVER'
                    idx = 0
                    s = 1
                    while idx < sub_64a522a5[0].field_0:
                        require idx < sub_64a522a5[0].field_0
                        require idx < sub_64a522a5[0].field_0
                        if sub_64a522a5[0][idx].field_256 == sub_64a522a5[0][idx].field_0 and sub_e128a991[stor8[arg2]].field_0:
                            require idx < sub_64a522a5[0].field_0
                            require idx < sub_64a522a5[0].field_0
                            if sub_64a522a5[0][idx].field_768 == sub_64a522a5[0][idx].field_512 and sub_e128a991[address(arg3)].field_0:
                                return 0
                        mem[0] = 0
                        mem[32] = 11
                        idx = idx + 1
                        s = 0
                        continue 
    return 1
}



}
