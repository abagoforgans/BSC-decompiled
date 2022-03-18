contract main {




// =====================  Runtime code  =====================


#
#  - sub_303de22c(?)
#  - sub_ab16b9c9(?)
#
const sub_05dd4e8f(?) = 1000000 * 10^18

const sub_6dcfd74a(?) = 10^9

const DECIMAL_NOMINATOR = 10^18


address registryAddress;
address implementationAddress;
address primaryOwner;
address authorityAddress;
address newAuthorityAddress;
uint8 stor5; offset 160
address systemAddress;
address converterAddress;
address baseTokenAddress;
address mainTokenAddress;
address contractsRegistryAddress;
address whiteListAddress;
uint256 stor10;
address vaultAddress;
uint256 stor11;
address auctionAddress;
uint256 stor12;
address sub_0091be55Address;
uint256 stor13;
address currencyPricesAddress;
uint256 stor14;
address escrowAddress;
uint256 stor15;
uint256 sub_9b8f703e;
uint256 sub_bb380c3c;
uint256 sub_bb51f2ba;
uint256 sub_7f1d298e;
uint256 sub_06bf9a90;
uint256 sub_f960d8d2;
uint256 sub_3d8b62c9;
uint256 sub_76238625;
uint256 sub_4c2ee54c;
uint256 sub_94572286;
uint256 sub_2265d2d8;
uint256 sub_fc1f08b2;
uint256 sub_b0942ce5;
uint8 sub_5b9cbdf7;
uint256 sub_c1f24537;
mapping of uint256 sub_41beab69;

function sub_0091be55(?) {
    return address(sub_0091be55Address)
}

function sub_06bf9a90(?) {
    return sub_06bf9a90
}

function newAuthorityAddress() {
    return newAuthorityAddress
}

function escrowAddress() {
    return address(escrowAddress)
}

function sub_2265d2d8(?) {
    return sub_2265d2d8
}

function authorityAddress() {
    return authorityAddress
}

function sub_3d8b62c9(?) {
    return sub_3d8b62c9
}

function mainToken() {
    return mainTokenAddress
}

function sub_3ff59a52(?) {
    return bool(stor5)
}

function sub_41beab69(?) {
    require calldata.size - 4 >= 32
    return sub_41beab69[arg1]
}

function vaultAddress() {
    return address(vaultAddress)
}

function sub_4c2ee54c(?) {
    return sub_4c2ee54c
}

function auctionAddress() {
    return address(auctionAddress)
}

function whiteListAddress() {
    return address(whiteListAddress)
}

function sub_5b9cbdf7(?) {
    return bool(sub_5b9cbdf7)
}

function implementation() {
    return implementationAddress
}

function sub_76238625(?) {
    return sub_76238625
}

function registry() {
    return registryAddress
}

function sub_7f1d298e(?) {
    return sub_7f1d298e
}

function primaryOwner() {
    return primaryOwner
}

function sub_94572286(?) {
    return sub_94572286
}

function sub_9b8f703e(?) {
    return sub_9b8f703e
}

function sub_b0942ce5(?) {
    return sub_b0942ce5
}

function sub_bb380c3c(?) {
    return sub_bb380c3c
}

function sub_bb51f2ba(?) {
    return sub_bb51f2ba
}

function converter() {
    return converterAddress
}

function sub_c1f24537(?) {
    return sub_c1f24537
}

function baseToken() {
    return baseTokenAddress
}

function systemAddress() {
    return systemAddress
}

function currencyPricesAddress() {
    return address(currencyPricesAddress)
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function sub_f960d8d2(?) {
    return sub_f960d8d2
}

function sub_fc1f08b2(?) {
    return sub_fc1f08b2
}

function _fallback() payable {
  stop
}

function initialize() {
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
}

function sub_80044eea(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_06bf9a90 = arg1
    return 1
}

function sub_964dfcce(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_f960d8d2 = arg1
    return 1
}

function sub_b0d640c0(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_bb380c3c = arg1
    return 1
}

function sub_da0062fb(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    converterAddress = arg1
    return 1
}

function sub_f5636aed(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require arg1 < 99
    sub_c1f24537 = arg1
    return 1
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

function sub_b36d57bd(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_bb51f2ba = arg1
    if not arg1:
        sub_7f1d298e = 0
    else:
        require 10^18 * arg1 / arg1 == 10^18
        sub_7f1d298e = 10^18 * arg1
    return 1
}

function sub_5d44b445(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= 100:
        revert with 0, 32, 34, 0xfe4552525f524154494f5f43414e545f42455f475245415445525f5448414e5f3130, mem[262 len 30]
    sub_9b8f703e = arg1
    return 1
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

function sub_48eed9fe(?) {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(sub_0091be55Address))
    if arg1:
        call address(sub_0091be55Address).0x3a9553fb with:
             gas gas_remaining wei
            args address(arg1), this.address, arg2
    else:
        call address(sub_0091be55Address).0x8926191d with:
             gas gas_remaining wei
            args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_a7105136(?) {
    require ext_code.size(mainTokenAddress)
    staticcall mainTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mainTokenAddress)
    if this.address != this.address:
        call mainTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(vaultAddress), ext_call.return_data[0]
    else:
        call mainTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    return 1
}

function sub_6b546d7d(?) {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        call address(sub_0091be55Address) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        if this.address != this.address:
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(sub_0091be55Address), arg2
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_0091be55Address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    return 1
}

function sub_b9e1a0c6(?) {
    require ext_code.size(mainTokenAddress)
    staticcall mainTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args converterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_2265d2d8:
        if ext_call.return_data[0]:
            if not 0 / ext_call.return_data[0]:
                return 0
            if sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2:
                return (sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18)
    else:
        if 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18:
            if ext_call.return_data[0]:
                if not 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                    return 0
                if sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2:
                    return (sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18)
    revert
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
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
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    if not arg4:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg5:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg6:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if stor5:
        revert with 0, 'ERR_OWNER_INTIALIZED_ALREADY'
    if arg4 == arg5:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg5 == arg6:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg4 == arg6:
        revert with 0, 'ERR_SAME_ADDRESS'
    primaryOwner = arg4
    authorityAddress = arg6
    systemAddress = arg5
    stor5 = 1
    converterAddress = arg1
    sub_fc1f08b2 = arg8
    sub_9b8f703e = 70
    sub_bb51f2ba = 120
    sub_bb380c3c = 100
    sub_06bf9a90 = 21
    sub_b0942ce5 = 35
    sub_c1f24537 = 10
    sub_7f1d298e = 120 * 10^18
    sub_f960d8d2 = 5 * 10^9
    baseTokenAddress = arg2
    mainTokenAddress = arg3
    contractsRegistryAddress = arg7
    sub_2265d2d8 = eth.balance(converterAddress)
    require ext_code.size(mainTokenAddress)
    staticcall mainTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args converterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_2265d2d8:
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            sub_94572286 = 0
        else:
            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
    else:
        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
        require ext_call.return_data[0]
        if not 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
            sub_94572286 = 0
        else:
            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
}

function sub_a241e157(?) {
    if eth.balance(converterAddress) > sub_2265d2d8:
        require sub_2265d2d8 <= eth.balance(converterAddress)
        if not eth.balance(converterAddress) - sub_2265d2d8:
            require eth.balance(converterAddress)
            require ext_code.size(mainTokenAddress)
            staticcall mainTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(converterAddress)
            staticcall converterAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_0091be55Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_RELAY_ZERO'
            require 0 / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == 0 / eth.balance(converterAddress)
            if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                revert with 0, 'ERR_RELAY_ZERO'
            require ext_code.size(address(sub_0091be55Address))
            call address(sub_0091be55Address).0x3a9553fb with:
                 gas gas_remaining wei
                args converterAddress, converterAddress, 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
        else:
            require (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) - sub_2265d2d8 == 10^11
            require eth.balance(converterAddress)
            require ext_code.size(mainTokenAddress)
            staticcall mainTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(converterAddress)
            staticcall converterAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_0091be55Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_RELAY_ZERO'
            require (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress)
            if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                revert with 0, 'ERR_RELAY_ZERO'
            require ext_code.size(address(sub_0091be55Address))
            call address(sub_0091be55Address).0x3a9553fb with:
                 gas gas_remaining wei
                args converterAddress, converterAddress, (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(converterAddress)
        call converterAddress.burn(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(mainTokenAddress)
        staticcall mainTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require eth.balance(this.address) <= eth.balance(this.address)
        require ext_code.size(mainTokenAddress)
        if this.address != this.address:
            call mainTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(vaultAddress), 0
        else:
            call mainTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        sub_2265d2d8 = eth.balance(converterAddress)
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xf83d1791 with:
             gas gas_remaining wei
            args mainTokenAddress, converterAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(converterAddress)
        call converterAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_2265d2d8 = eth.balance(converterAddress)
    return 1
}

function sub_060bce45(?) {
    if eth.balance(converterAddress) > sub_2265d2d8:
        require sub_2265d2d8 <= eth.balance(converterAddress)
        if not eth.balance(converterAddress) - sub_2265d2d8:
            require eth.balance(converterAddress)
            require ext_code.size(mainTokenAddress)
            staticcall mainTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(converterAddress)
            staticcall converterAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_0091be55Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_RELAY_ZERO'
            require 0 / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == 0 / eth.balance(converterAddress)
            if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                revert with 0, 'ERR_RELAY_ZERO'
            require ext_code.size(address(sub_0091be55Address))
            call address(sub_0091be55Address).0x3a9553fb with:
                 gas gas_remaining wei
                args converterAddress, converterAddress, 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
        else:
            require (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) - sub_2265d2d8 == 10^11
            require eth.balance(converterAddress)
            require ext_code.size(mainTokenAddress)
            staticcall mainTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(converterAddress)
            staticcall converterAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_0091be55Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_RELAY_ZERO'
            require (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress)
            if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                revert with 0, 'ERR_RELAY_ZERO'
            require ext_code.size(address(sub_0091be55Address))
            call address(sub_0091be55Address).0x3a9553fb with:
                 gas gas_remaining wei
                args converterAddress, converterAddress, (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(converterAddress)
        call converterAddress.burn(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(mainTokenAddress)
        staticcall mainTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require eth.balance(this.address) <= eth.balance(this.address)
        require ext_code.size(mainTokenAddress)
        if this.address != this.address:
            call mainTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(vaultAddress), 0
        else:
            call mainTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        sub_2265d2d8 = eth.balance(converterAddress)
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xf83d1791 with:
             gas gas_remaining wei
            args mainTokenAddress, converterAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(converterAddress)
        call converterAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_2265d2d8 = eth.balance(converterAddress)
    require ext_code.size(address(currencyPricesAddress))
    staticcall address(currencyPricesAddress).0x7058346f with:
            gas gas_remaining wei
           args baseTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_fc1f08b2:
        if sub_fc1f08b2 <= ext_call.return_data[0]:
            if 0 < sub_f960d8d2:
                return 1
            require ext_code.size(mainTokenAddress)
            staticcall mainTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(converterAddress)
            staticcall converterAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(sub_0091be55Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_RELAY_ZERO'
            require not 0 / ext_call.return_data[0]
            revert with 0, 'ERR_RELAY_ZERO'
        require ext_call.return_data[0] <= sub_fc1f08b2
        if not sub_fc1f08b2 - ext_call.return_data[0]:
            require sub_fc1f08b2
            if 0 / sub_fc1f08b2 >= sub_f960d8d2:
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                staticcall converterAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(sub_0091be55Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_RELAY_ZERO'
                require 0 / sub_fc1f08b2 * ext_call.return_data[0] / ext_call.return_data[0] == 0 / sub_fc1f08b2
                if 0 / sub_fc1f08b2 * ext_call.return_data[0] / 10^11 <= 0:
                    revert with 0, 'ERR_RELAY_ZERO'
                require ext_code.size(address(sub_0091be55Address))
                call address(sub_0091be55Address).0x3a9553fb with:
                     gas gas_remaining wei
                    args converterAddress, converterAddress, 0 / sub_fc1f08b2 * ext_call.return_data[0] / 10^11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.burn(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require eth.balance(this.address) <= eth.balance(this.address)
                require ext_code.size(mainTokenAddress)
                if this.address != this.address:
                    call mainTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(vaultAddress), 0
                else:
                    call mainTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(vaultAddress), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                sub_2265d2d8 = eth.balance(converterAddress)
                require ext_code.size(converterAddress)
                call converterAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_2265d2d8 = eth.balance(converterAddress)
                sub_fc1f08b2 = ext_call.return_data[0]
        else:
            require (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2 - ext_call.return_data[0] == 10^11
            require sub_fc1f08b2
            if (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2 >= sub_f960d8d2:
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                staticcall converterAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(sub_0091be55Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_RELAY_ZERO'
                require (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2 * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2
                if (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2 * ext_call.return_data[0] / 10^11 <= 0:
                    revert with 0, 'ERR_RELAY_ZERO'
                require ext_code.size(address(sub_0091be55Address))
                call address(sub_0091be55Address).0x3a9553fb with:
                     gas gas_remaining wei
                    args converterAddress, converterAddress, (10^11 * sub_fc1f08b2) - (10^11 * ext_call.return_data[0]) / sub_fc1f08b2 * ext_call.return_data[0] / 10^11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.burn(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require eth.balance(this.address) <= eth.balance(this.address)
                require ext_code.size(mainTokenAddress)
                if this.address != this.address:
                    call mainTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(vaultAddress), 0
                else:
                    call mainTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(vaultAddress), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                sub_2265d2d8 = eth.balance(converterAddress)
                require ext_code.size(converterAddress)
                call converterAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_2265d2d8 = eth.balance(converterAddress)
                sub_fc1f08b2 = ext_call.return_data[0]
    else:
        require sub_fc1f08b2 <= ext_call.return_data[0]
        if not ext_call.return_data[0] - sub_fc1f08b2:
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] >= sub_f960d8d2:
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                staticcall converterAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(sub_0091be55Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_RELAY_ZERO'
                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 0 / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^11 <= 0:
                    revert with 0, 'ERR_RELAY_ZERO'
                require ext_code.size(address(sub_0091be55Address))
                call address(sub_0091be55Address).0x3a9553fb with:
                     gas gas_remaining wei
                    args converterAddress, converterAddress, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.burn(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require eth.balance(this.address) <= eth.balance(this.address)
                require ext_code.size(mainTokenAddress)
                if this.address != this.address:
                    call mainTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(vaultAddress), 0
                else:
                    call mainTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(vaultAddress), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                sub_2265d2d8 = eth.balance(converterAddress)
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).0xf83d1791 with:
                     gas gas_remaining wei
                    args mainTokenAddress, converterAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_2265d2d8 = eth.balance(converterAddress)
                sub_fc1f08b2 = ext_call.return_data[0]
        else:
            require (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0] - sub_fc1f08b2 == 10^11
            require ext_call.return_data[0]
            if (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0] >= sub_f960d8d2:
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                staticcall converterAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(sub_0091be55Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_RELAY_ZERO'
                require (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0]
                if (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0] * ext_call.return_data[0] / 10^11 <= 0:
                    revert with 0, 'ERR_RELAY_ZERO'
                require ext_code.size(address(sub_0091be55Address))
                call address(sub_0091be55Address).0x3a9553fb with:
                     gas gas_remaining wei
                    args converterAddress, converterAddress, (10^11 * ext_call.return_data[0]) - (10^11 * sub_fc1f08b2) / ext_call.return_data[0] * ext_call.return_data[0] / 10^11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.burn(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(mainTokenAddress)
                staticcall mainTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require eth.balance(this.address) <= eth.balance(this.address)
                require ext_code.size(mainTokenAddress)
                if this.address != this.address:
                    call mainTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(vaultAddress), 0
                else:
                    call mainTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(vaultAddress), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                sub_2265d2d8 = eth.balance(converterAddress)
                require ext_code.size(address(vaultAddress))
                call address(vaultAddress).0xf83d1791 with:
                     gas gas_remaining wei
                    args mainTokenAddress, converterAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(converterAddress)
                call converterAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_2265d2d8 = eth.balance(converterAddress)
                sub_fc1f08b2 = ext_call.return_data[0]
    return 1
}

function auctionEnded() {
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    else:
        if eth.balance(converterAddress):
            require sub_fc1f08b2 * eth.balance(converterAddress) / eth.balance(converterAddress) == sub_fc1f08b2
            require ext_code.size(address(auctionAddress))
            call address(auctionAddress).0x84d6dffc with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_06bf9a90:
                    sub_76238625 = sub_4c2ee54c
                    sub_4c2ee54c = 0
                    require ext_code.size(mainTokenAddress)
                    staticcall mainTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args converterAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if sub_2265d2d8:
                            require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                            require ext_call.return_data[0]
                            if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                sub_5b9cbdf7 = 0
                                return 1
                            else:
                                sub_94572286 = 0
                                sub_5b9cbdf7 = 0
                                return 1
                        else:
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0]:
                                require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                sub_5b9cbdf7 = 0
                                return 1
                            else:
                                sub_94572286 = 0
                                sub_5b9cbdf7 = 0
                                return 1
                else:
                    require 1 <= ext_call.return_data[0]
                    require ext_code.size(address(auctionAddress))
                    staticcall address(auctionAddress).0xa504dcbb with:
                            gas gas_remaining wei
                           args (ext_call.return_data[0] - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 2 <= ext_call.return_data[0]
                        require ext_code.size(address(auctionAddress))
                        staticcall address(auctionAddress).0xa504dcbb with:
                                gas gas_remaining wei
                               args (ext_call.return_data[0] - 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 1 <= ext_call.return_data[0]
                            require ext_code.size(address(auctionAddress))
                            staticcall address(auctionAddress).0xfc0546d1 with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] - 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
                                    require sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                    if ext_call.return_data[0]:
                                        require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
                                        require ext_call.return_data[0]
                                        if 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18:
                                            require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 / 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 == 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 <= 10^18:
                                                sub_3d8b62c9 = 0
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                            else:
                                                sub_3d8b62c9 = 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                        else:
                                            sub_3d8b62c9 = 0
                                            sub_76238625 = sub_4c2ee54c
                                            sub_4c2ee54c = 0
                                            require ext_code.size(mainTokenAddress)
                                            staticcall mainTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args converterAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if sub_2265d2d8:
                                                    require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                    require ext_call.return_data[0]
                                                    if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 0 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18:
                                            require 0 / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 / 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 == 0 / ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 <= 10^18:
                                                sub_3d8b62c9 = 0
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                            else:
                                                sub_3d8b62c9 = 0 / ext_call.return_data[0] * 10^9 * ext_call.return_data[0] / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                        else:
                                            sub_3d8b62c9 = 0
                                            sub_76238625 = sub_4c2ee54c
                                            sub_4c2ee54c = 0
                                            require ext_code.size(mainTokenAddress)
                                            staticcall mainTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args converterAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if sub_2265d2d8:
                                                    require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                    require ext_call.return_data[0]
                                                    if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 0 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                else:
                                    require sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                    if ext_call.return_data[0]:
                                        require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
                                        require ext_call.return_data[0]
                                        if 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18:
                                            require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 / 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 == 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 <= 10^18:
                                                sub_3d8b62c9 = 0
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                            else:
                                                sub_3d8b62c9 = 10^9 * ext_call.return_data[0] / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                        else:
                                            sub_3d8b62c9 = 0
                                            sub_76238625 = sub_4c2ee54c
                                            sub_4c2ee54c = 0
                                            require ext_code.size(mainTokenAddress)
                                            staticcall mainTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args converterAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if sub_2265d2d8:
                                                    require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                    require ext_call.return_data[0]
                                                    if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 0 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                    else:
                                        require ext_call.return_data[0]
                                        if 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18:
                                            require 0 / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 / 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 == 0 / ext_call.return_data[0]
                                            if 0 / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18 <= 10^18:
                                                sub_3d8b62c9 = 0
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                            else:
                                                sub_3d8b62c9 = 0 / ext_call.return_data[0] * 0 / sub_fc1f08b2 * eth.balance(converterAddress) / 10^18
                                                sub_76238625 = sub_4c2ee54c
                                                sub_4c2ee54c = 0
                                                require ext_code.size(mainTokenAddress)
                                                staticcall mainTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args converterAddress
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if sub_2265d2d8:
                                                        require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                        require ext_call.return_data[0]
                                                        if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if 0 / ext_call.return_data[0]:
                                                            require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                            sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                                        else:
                                                            sub_94572286 = 0
                                                            sub_5b9cbdf7 = 0
                                                            return 1
                                        else:
                                            sub_3d8b62c9 = 0
                                            sub_76238625 = sub_4c2ee54c
                                            sub_4c2ee54c = 0
                                            require ext_code.size(mainTokenAddress)
                                            staticcall mainTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args converterAddress
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if sub_2265d2d8:
                                                    require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                                                    require ext_call.return_data[0]
                                                    if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                else:
                                                    require ext_call.return_data[0]
                                                    if 0 / ext_call.return_data[0]:
                                                        require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                                        sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                                        sub_5b9cbdf7 = 0
                                                        return 1
                                                    else:
                                                        sub_94572286 = 0
                                                        sub_5b9cbdf7 = 0
                                                        return 1
        else:
            require ext_code.size(address(auctionAddress))
            call address(auctionAddress).0x84d6dffc with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_06bf9a90:
                    sub_76238625 = sub_4c2ee54c
                    sub_4c2ee54c = 0
                    require ext_code.size(mainTokenAddress)
                    staticcall mainTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args converterAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if sub_2265d2d8:
                            require 1000000 * 10^18 * sub_2265d2d8 / sub_2265d2d8 == 1000000 * 10^18
                            require ext_call.return_data[0]
                            if 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0]:
                                require sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] == sub_fc1f08b2
                                sub_94572286 = sub_fc1f08b2 * 1000000 * 10^18 * sub_2265d2d8 / ext_call.return_data[0] / 1000000 * 10^18
                                sub_5b9cbdf7 = 0
                                return 1
                            else:
                                sub_94572286 = 0
                                sub_5b9cbdf7 = 0
                                return 1
                        else:
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0]:
                                require sub_fc1f08b2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == sub_fc1f08b2
                                sub_94572286 = sub_fc1f08b2 * 0 / ext_call.return_data[0] / 1000000 * 10^18
                                sub_5b9cbdf7 = 0
                                return 1
                            else:
                                sub_94572286 = 0
                                sub_5b9cbdf7 = 0
                                return 1
                else:
                    require 1 <= ext_call.return_data[0]
                    require ext_code.size(address(auctionAddress))
                    staticcall address(auctionAddress).0xa504dcbb with:
                            gas gas_remaining wei
                           args (ext_call.return_data[0] - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require 2 <= ext_call.return_data[0]
                        require ext_code.size(address(auctionAddress))
                        staticcall address(auctionAddress).0xa504dcbb with:
                                gas gas_remaining wei
                               args (ext_call.return_data[0] - 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 1 <= ext_call.return_data[0]
                            require ext_code.size(address(auctionAddress))
                            staticcall address(auctionAddress).0xfc0546d1 with:
                                    gas gas_remaining wei
                                   args (ext_call.return_data[0] - 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
                                revert
}

function sub_0c456d8e(?) {
    require calldata.size - 4 >= 64
    if address(escrowAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(auctionAddress))
    call address(auctionAddress).0x84d6dffc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'ERR_WHITELIST'
    if ext_call.return_data[0] <= sub_41beab69[address(ext_call.return_data[0])]:
        revert with 0, 'ERR_WALLET_ALREADY_REDEEM'
    if eth.balance(converterAddress) == sub_2265d2d8:
        require ext_code.size(mainTokenAddress)
        if msg.sender != this.address:
            call mainTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, converterAddress, arg1
        else:
            call mainTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args converterAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        require ext_code.size(converterAddress)
        staticcall converterAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 <= 0:
            revert with 0, 32, 43, 0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00, mem[271 len 21]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
        if not arg1:
            if ext_call.return_data[50 len 14]:
                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                    if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(converterAddress)
                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg2), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            sub_2265d2d8 = eth.balance(converterAddress)
                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                            emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                return 1
        else:
            if 1000 * arg1 / arg1 == 1000:
                if not 1000 * arg1:
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * arg1 >= 0:
                            if 1000 * arg1:
                                require ext_code.size(converterAddress)
                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * arg1, 0, address(arg2), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_2265d2d8 = eth.balance(converterAddress)
                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                    return 1
                    else:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                else:
                    if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * arg1 >= 0:
                                if 1000 * arg1:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(arg2), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
    else:
        if eth.balance(converterAddress) <= sub_2265d2d8:
            require ext_code.size(mainTokenAddress)
            if msg.sender != this.address:
                call mainTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, converterAddress, arg1
            else:
                call mainTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args converterAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
            require ext_code.size(converterAddress)
            staticcall converterAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 <= 0:
                revert with 0, 32, 43, 0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00, mem[271 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
            if not arg1:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[50 len 14]:
                                require ext_code.size(converterAddress)
                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg2), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_2265d2d8 = eth.balance(converterAddress)
                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                    return 1
            else:
                if 1000 * arg1 / arg1 == 1000:
                    if not 1000 * arg1:
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * arg1 >= 0:
                                if 1000 * arg1:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 1000 * arg1, 0, address(arg2), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                    else:
                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * arg1 >= 0:
                                    if 1000 * arg1:
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(arg2), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
        else:
            if sub_2265d2d8 <= eth.balance(converterAddress):
                if not eth.balance(converterAddress) - sub_2265d2d8:
                    if eth.balance(converterAddress):
                        require ext_code.size(mainTokenAddress)
                        staticcall mainTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(converterAddress)
                        staticcall converterAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sub_0091be55Address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_RELAY_ZERO'
                        if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == 0 / eth.balance(converterAddress):
                            if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                                revert with 0, 'ERR_RELAY_ZERO'
                            require ext_code.size(address(sub_0091be55Address))
                            call address(sub_0091be55Address).0x3a9553fb with:
                                 gas gas_remaining wei
                                args converterAddress, converterAddress, 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(converterAddress)
                            call converterAddress.burn(address rg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(mainTokenAddress)
                            staticcall mainTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                if eth.balance(this.address) <= eth.balance(this.address):
                                    require ext_code.size(mainTokenAddress)
                                    if this.address != this.address:
                                        call mainTokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(vaultAddress), 0
                                    else:
                                        call mainTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(vaultAddress), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    require ext_code.size(address(vaultAddress))
                                    call address(vaultAddress).0xf83d1791 with:
                                         gas gas_remaining wei
                                        args mainTokenAddress, converterAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(converterAddress)
                                    call converterAddress.sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    require ext_code.size(mainTokenAddress)
                                    if msg.sender != this.address:
                                        call mainTokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, converterAddress, arg1
                                    else:
                                        call mainTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args converterAddress, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                    require ext_code.size(converterAddress)
                                    staticcall converterAddress.getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if arg1 <= 0:
                                        revert with 0, 32, 43, 0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00, mem[271 len 21]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
                                    if not arg1:
                                        if ext_call.return_data[50 len 14]:
                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                    if 1000 * ext_call.return_data[50 len 14]:
                                                        require ext_code.size(converterAddress)
                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg2), 128, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                            return 1
                                    else:
                                        if 1000 * arg1 / arg1 == 1000:
                                            if not 1000 * arg1:
                                                if not ext_call.return_data[50 len 14]:
                                                    if 1000 * arg1 >= 0:
                                                        if 1000 * arg1:
                                                            require ext_code.size(converterAddress)
                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0 / 1000 * arg1, 0, address(arg2), 128, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                            emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                return 1
                                                else:
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                            else:
                                                if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                    if not ext_call.return_data[50 len 14]:
                                                        if 1000 * arg1 >= 0:
                                                            if 1000 * arg1:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(arg2), 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                else:
                    if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) - sub_2265d2d8 == 10^11:
                        if eth.balance(converterAddress):
                            require ext_code.size(mainTokenAddress)
                            staticcall mainTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(converterAddress)
                            staticcall converterAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sub_0091be55Address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_RELAY_ZERO'
                            if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress):
                                if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                                    revert with 0, 'ERR_RELAY_ZERO'
                                require ext_code.size(address(sub_0091be55Address))
                                call address(sub_0091be55Address).0x3a9553fb with:
                                     gas gas_remaining wei
                                    args converterAddress, converterAddress, (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(converterAddress)
                                call converterAddress.burn(address rg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(mainTokenAddress)
                                staticcall mainTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                    if eth.balance(this.address) <= eth.balance(this.address):
                                        require ext_code.size(mainTokenAddress)
                                        if this.address != this.address:
                                            call mainTokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(vaultAddress), 0
                                        else:
                                            call mainTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(vaultAddress), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(address(vaultAddress))
                                        call address(vaultAddress).0xf83d1791 with:
                                             gas gas_remaining wei
                                            args mainTokenAddress, converterAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(converterAddress)
                                        call converterAddress.sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(mainTokenAddress)
                                        if msg.sender != this.address:
                                            call mainTokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, converterAddress, arg1
                                        else:
                                            call mainTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args converterAddress, arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                        require ext_code.size(converterAddress)
                                        staticcall converterAddress.getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        if arg1 <= 0:
                                            revert with 0, 32, 43, 0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00, mem[271 len 21]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0, 32, 40, 0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[268 len 24]
                                        if not arg1:
                                            if ext_call.return_data[50 len 14]:
                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                    if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                        if 1000 * ext_call.return_data[50 len 14]:
                                                            require ext_code.size(converterAddress)
                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg2), 128, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                            emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                return 1
                                        else:
                                            if 1000 * arg1 / arg1 == 1000:
                                                if not 1000 * arg1:
                                                    if not ext_call.return_data[50 len 14]:
                                                        if 1000 * arg1 >= 0:
                                                            if 1000 * arg1:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / 1000 * arg1, 0, address(arg2), 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                else:
                                                    if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 1000 * arg1 >= 0:
                                                                if 1000 * arg1:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(arg2), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg2), 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
    revert
}

function sub_4a1dc092(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(auctionAddress))
    call address(auctionAddress).0x84d6dffc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'ERR_WHITELIST'
    if ext_call.return_data[0] <= sub_41beab69[address(ext_call.return_data[0])]:
        revert with 0, 'ERR_WALLET_ALREADY_REDEEM'
    if eth.balance(converterAddress) == sub_2265d2d8:
        require ext_code.size(mainTokenAddress)
        if msg.sender != this.address:
            call mainTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, converterAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
            require ext_code.size(converterAddress)
            staticcall converterAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if not arg1:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[50 len 14]:
                                require ext_code.size(converterAddress)
                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_2265d2d8 = eth.balance(converterAddress)
                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                    return 1
            else:
                if 1000 * arg1 / arg1 == 1000:
                    if not 1000 * arg1:
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * arg1 >= 0:
                                if 1000 * arg1:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                    else:
                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * arg1 >= 0:
                                    if 1000 * arg1:
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
        else:
            call mainTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args converterAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
            require ext_code.size(converterAddress)
            staticcall converterAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if not arg1:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                            if 1000 * ext_call.return_data[50 len 14]:
                                require ext_code.size(converterAddress)
                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                sub_2265d2d8 = eth.balance(converterAddress)
                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                    return 1
            else:
                if 1000 * arg1 / arg1 == 1000:
                    if not 1000 * arg1:
                        if not ext_call.return_data[50 len 14]:
                            if 1000 * arg1 >= 0:
                                if 1000 * arg1:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                    else:
                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * arg1 >= 0:
                                    if 1000 * arg1:
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
    else:
        if eth.balance(converterAddress) <= sub_2265d2d8:
            require ext_code.size(mainTokenAddress)
            if msg.sender != this.address:
                call mainTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, converterAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                require ext_code.size(converterAddress)
                staticcall converterAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg1 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg1:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                else:
                    if 1000 * arg1 / arg1 == 1000:
                        if not 1000 * arg1:
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * arg1 >= 0:
                                    if 1000 * arg1:
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
                        else:
                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * arg1 >= 0:
                                        if 1000 * arg1:
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                require ext_code.size(converterAddress)
                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                    return 1
            else:
                call mainTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args converterAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                require ext_code.size(converterAddress)
                staticcall converterAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg1 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not arg1:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14]:
                                    require ext_code.size(converterAddress)
                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_2265d2d8 = eth.balance(converterAddress)
                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                        return 1
                else:
                    if 1000 * arg1 / arg1 == 1000:
                        if not 1000 * arg1:
                            if not ext_call.return_data[50 len 14]:
                                if 1000 * arg1 >= 0:
                                    if 1000 * arg1:
                                        require ext_code.size(converterAddress)
                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                            return 1
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
                        else:
                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                if not ext_call.return_data[50 len 14]:
                                    if 1000 * arg1 >= 0:
                                        if 1000 * arg1:
                                            require ext_code.size(converterAddress)
                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                return 1
                                else:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                require ext_code.size(converterAddress)
                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                    return 1
        else:
            if sub_2265d2d8 <= eth.balance(converterAddress):
                if not eth.balance(converterAddress) - sub_2265d2d8:
                    if eth.balance(converterAddress):
                        require ext_code.size(mainTokenAddress)
                        staticcall mainTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(converterAddress)
                        staticcall converterAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sub_0091be55Address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_RELAY_ZERO'
                        if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == 0 / eth.balance(converterAddress):
                            if 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                                revert with 0, 'ERR_RELAY_ZERO'
                            require ext_code.size(address(sub_0091be55Address))
                            call address(sub_0091be55Address).0x3a9553fb with:
                                 gas gas_remaining wei
                                args converterAddress, converterAddress, 0 / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(converterAddress)
                            call converterAddress.burn(address rg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(mainTokenAddress)
                            staticcall mainTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                if eth.balance(this.address) <= eth.balance(this.address):
                                    require ext_code.size(mainTokenAddress)
                                    if this.address != this.address:
                                        call mainTokenAddress.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(vaultAddress), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(address(vaultAddress))
                                        call address(vaultAddress).0xf83d1791 with:
                                             gas gas_remaining wei
                                            args mainTokenAddress, converterAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(converterAddress)
                                        call converterAddress.sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(mainTokenAddress)
                                        if msg.sender != this.address:
                                            call mainTokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, converterAddress, arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            require ext_code.size(converterAddress)
                                            staticcall converterAddress.getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if arg1 <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            43,
                                                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                            mem[207 len 21]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if not arg1:
                                                if ext_call.return_data[50 len 14]:
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                            if 1000 * ext_call.return_data[50 len 14]:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                            else:
                                                if 1000 * arg1 / arg1 == 1000:
                                                    if not 1000 * arg1:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 1000 * arg1 >= 0:
                                                                if 1000 * arg1:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                        else:
                                            call mainTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args converterAddress, arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            require ext_code.size(converterAddress)
                                            staticcall converterAddress.getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if arg1 <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            43,
                                                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                            mem[207 len 21]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if not arg1:
                                                if ext_call.return_data[50 len 14]:
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                            if 1000 * ext_call.return_data[50 len 14]:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                            else:
                                                if 1000 * arg1 / arg1 == 1000:
                                                    if not 1000 * arg1:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 1000 * arg1 >= 0:
                                                                if 1000 * arg1:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                    else:
                                        call mainTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(vaultAddress), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(address(vaultAddress))
                                        call address(vaultAddress).0xf83d1791 with:
                                             gas gas_remaining wei
                                            args mainTokenAddress, converterAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(converterAddress)
                                        call converterAddress.sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_2265d2d8 = eth.balance(converterAddress)
                                        require ext_code.size(mainTokenAddress)
                                        if msg.sender != this.address:
                                            call mainTokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, converterAddress, arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            require ext_code.size(converterAddress)
                                            staticcall converterAddress.getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if arg1 <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            43,
                                                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                            mem[207 len 21]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if not arg1:
                                                if ext_call.return_data[50 len 14]:
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                            if 1000 * ext_call.return_data[50 len 14]:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                            else:
                                                if 1000 * arg1 / arg1 == 1000:
                                                    if not 1000 * arg1:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 1000 * arg1 >= 0:
                                                                if 1000 * arg1:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                        else:
                                            call mainTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args converterAddress, arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            require ext_code.size(converterAddress)
                                            staticcall converterAddress.getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            if arg1 <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            43,
                                                            0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                            mem[207 len 21]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            40,
                                                            0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[204 len 24]
                                            if not arg1:
                                                if ext_call.return_data[50 len 14]:
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                        if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                            if 1000 * ext_call.return_data[50 len 14]:
                                                                require ext_code.size(converterAddress)
                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                    return 1
                                            else:
                                                if 1000 * arg1 / arg1 == 1000:
                                                    if not 1000 * arg1:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 1000 * arg1 >= 0:
                                                                if 1000 * arg1:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                    else:
                                                        if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                else:
                    if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) - sub_2265d2d8 == 10^11:
                        if eth.balance(converterAddress):
                            require ext_code.size(mainTokenAddress)
                            staticcall mainTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(converterAddress)
                            staticcall converterAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sub_0091be55Address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_RELAY_ZERO'
                            if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / ext_call.return_data[0] == (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress):
                                if (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11 <= 0:
                                    revert with 0, 'ERR_RELAY_ZERO'
                                require ext_code.size(address(sub_0091be55Address))
                                call address(sub_0091be55Address).0x3a9553fb with:
                                     gas gas_remaining wei
                                    args converterAddress, converterAddress, (10^11 * eth.balance(converterAddress)) - (10^11 * sub_2265d2d8) / eth.balance(converterAddress) * ext_call.return_data[0] / 10^11
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(converterAddress)
                                call converterAddress.burn(address rg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(mainTokenAddress)
                                staticcall mainTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                    if eth.balance(this.address) <= eth.balance(this.address):
                                        require ext_code.size(mainTokenAddress)
                                        if this.address != this.address:
                                            call mainTokenAddress.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(vaultAddress), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            require ext_code.size(address(vaultAddress))
                                            call address(vaultAddress).0xf83d1791 with:
                                                 gas gas_remaining wei
                                                args mainTokenAddress, converterAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(converterAddress)
                                            call converterAddress.sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            require ext_code.size(mainTokenAddress)
                                            if msg.sender != this.address:
                                                call mainTokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, converterAddress, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                                require ext_code.size(converterAddress)
                                                staticcall converterAddress.getReserves() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if arg1 <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                43,
                                                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                                mem[207 len 21]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if not arg1:
                                                    if ext_call.return_data[50 len 14]:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                                if 1000 * ext_call.return_data[50 len 14]:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                else:
                                                    if 1000 * arg1 / arg1 == 1000:
                                                        if not 1000 * arg1:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                                if not ext_call.return_data[50 len 14]:
                                                                    if 1000 * arg1 >= 0:
                                                                        if 1000 * arg1:
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, address(msg.sender), 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                                else:
                                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                                require ext_code.size(converterAddress)
                                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                    return 1
                                            else:
                                                call mainTokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args converterAddress, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                                require ext_code.size(converterAddress)
                                                staticcall converterAddress.getReserves() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if arg1 <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                43,
                                                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                                mem[207 len 21]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if not arg1:
                                                    if ext_call.return_data[50 len 14]:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                                if 1000 * ext_call.return_data[50 len 14]:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                else:
                                                    if 1000 * arg1 / arg1 == 1000:
                                                        if not 1000 * arg1:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                                if not ext_call.return_data[50 len 14]:
                                                                    if 1000 * arg1 >= 0:
                                                                        if 1000 * arg1:
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                                else:
                                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                                require ext_code.size(converterAddress)
                                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                    return 1
                                        else:
                                            call mainTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(vaultAddress), 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            require ext_code.size(address(vaultAddress))
                                            call address(vaultAddress).0xf83d1791 with:
                                                 gas gas_remaining wei
                                                args mainTokenAddress, converterAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(converterAddress)
                                            call converterAddress.sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            sub_2265d2d8 = eth.balance(converterAddress)
                                            require ext_code.size(mainTokenAddress)
                                            if msg.sender != this.address:
                                                call mainTokenAddress.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, converterAddress, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                                require ext_code.size(converterAddress)
                                                staticcall converterAddress.getReserves() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if arg1 <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                43,
                                                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                                mem[207 len 21]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if not arg1:
                                                    if ext_call.return_data[50 len 14]:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                                if 1000 * ext_call.return_data[50 len 14]:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(msg.sender), 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                else:
                                                    if 1000 * arg1 / arg1 == 1000:
                                                        if not 1000 * arg1:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                                if not ext_call.return_data[50 len 14]:
                                                                    if 1000 * arg1 >= 0:
                                                                        if 1000 * arg1:
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                                else:
                                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                                require ext_code.size(converterAddress)
                                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                    return 1
                                            else:
                                                call mainTokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args converterAddress, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                                                require ext_code.size(converterAddress)
                                                staticcall converterAddress.getReserves() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                if arg1 <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                43,
                                                                0x556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e00,
                                                                mem[207 len 21]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                40,
                                                                0x30556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[204 len 24]
                                                if not arg1:
                                                    if ext_call.return_data[50 len 14]:
                                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                            if 1000 * ext_call.return_data[50 len 14] >= 1000 * ext_call.return_data[50 len 14]:
                                                                if 1000 * ext_call.return_data[50 len 14]:
                                                                    require ext_code.size(converterAddress)
                                                                    call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    sub_2265d2d8 = eth.balance(converterAddress)
                                                                    sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                    emit Redemption(baseTokenAddress, arg1, 0 / 1000 * Mask(112, 0, ext_call.return_data[32]));
                                                                    if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                        return 1
                                                else:
                                                    if 1000 * arg1 / arg1 == 1000:
                                                        if not 1000 * arg1:
                                                            if not ext_call.return_data[50 len 14]:
                                                                if 1000 * arg1 >= 0:
                                                                    if 1000 * arg1:
                                                                        require ext_code.size(converterAddress)
                                                                        call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        sub_2265d2d8 = eth.balance(converterAddress)
                                                                        sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                        emit Redemption(baseTokenAddress, arg1, 0 / 1000 * arg1);
                                                                        if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                            return 1
                                                            else:
                                                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                    if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(msg.sender), 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 0 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] * arg1 / 1000 * arg1 == ext_call.return_data[18 len 14]:
                                                                if not ext_call.return_data[50 len 14]:
                                                                    if 1000 * arg1 >= 0:
                                                                        if 1000 * arg1:
                                                                            require ext_code.size(converterAddress)
                                                                            call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1, 0, msg.sender, 128, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            sub_2265d2d8 = eth.balance(converterAddress)
                                                                            sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                            emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / 1000 * arg1);
                                                                            if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                return 1
                                                                else:
                                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] == 1000:
                                                                        if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]) >= 1000 * ext_call.return_data[50 len 14]:
                                                                            if (1000 * arg1) + (1000 * ext_call.return_data[50 len 14]):
                                                                                require ext_code.size(converterAddress)
                                                                                call converterAddress.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require return_data.size >= 32
                                                                                sub_2265d2d8 = eth.balance(converterAddress)
                                                                                sub_41beab69[address(ext_call.return_data[0])] = ext_call.return_data[0]
                                                                                emit Redemption(baseTokenAddress, arg1, 1000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (1000 * arg1) + (1000 * Mask(112, 0, ext_call.return_data[32])));
                                                                                if eth.balance(converterAddress) <= eth.balance(converterAddress):
                                                                                    return 1
    revert
}



}
