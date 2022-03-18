contract main {




// =====================  Runtime code  =====================


#
#  - auctionEnd()
#  - contributeWithEtherBehalf(address arg1)
#  - sub_378b50d2(?)
#
const sub_6dcfd74a(?) = 10^9

const sub_aa0e28d7(?) = 10^6

const DECIMAL_NOMINATOR = 10^18


address registryAddress;
address implementationAddress;
address primaryOwner;
address authorityAddress;
address newAuthorityAddress;
uint8 sub_3ff59a52; offset 160
address systemAddress;
address contractsRegistryAddress;
address whiteListAddress;
uint256 stor7;
address smartSwapAddress;
uint256 stor8;
address currencyPricesAddress;
uint256 stor9;
address vaultAddress;
uint256 stor10;
address mainTokenAddress;
uint256 stor11;
address liquidityAddress;
uint256 stor12;
address sub_6051254eAddress;
uint256 stor13;
address escrowAddress;
uint256 stor14;
address sub_1129c901Address;
uint256 stor15;
uint256 sub_5b1a15de;
uint256 managementFee;
uint256 staking;
uint256 sub_343b9d76;
uint256 sub_669329ce;
uint256 sub_92c74982;
uint256 sub_a835fb94;
uint256 sub_933bccd7;
uint256 sub_84d6dffc;
uint256 totalContribution;
uint256 sub_dac563d0;
uint256 sub_6a4f1172;
uint256 sub_4dfe282e;
uint256 sub_574f7244;
uint256 todaySupply;
uint256 sub_8ae3529e;
uint8 sub_1aed04b3;
mapping of uint256 sub_6b1bd5af;
mapping of uint256 sub_4719dd70;
mapping of uint256 sub_261a9fbe;
mapping of uint256 sub_14a491a3;
mapping of uint256 sub_12c5e002;
mapping of uint256 sub_fc0546d1;
mapping of uint256 sub_a504dcbb;
mapping of uint256 sub_46d65919;
mapping of uint256 sub_1d6cf719;
mapping of uint256 sub_17bdd815;
mapping of uint256 sub_0cbed5ef;
mapping of address sub_db9c5355;
mapping of uint256 sub_125f2c50;
mapping of uint8 stor46;
uint256 sub_a8311533;
uint256 sub_1035e83b;
uint256 INTERVAL;
uint256 currentMarketPrice;
uint256 stor4B5B;
uint256 stor8BD1;
uint256 storBD6C;
uint256 storD390;
uint256 storFCC3;

function currentMarketPrice() {
    return currentMarketPrice
}

function newAuthorityAddress() {
    return newAuthorityAddress
}

function sub_0cbed5ef(?) {
    require calldata.size - 4 >= 64
    return sub_0cbed5ef[stor45[arg1][address(arg2)]]
}

function escrowAddress() {
    return address(escrowAddress)
}

function totalContribution() {
    return totalContribution
}

function sub_1035e83b(?) {
    return sub_1035e83b
}

function sub_1129c901(?) {
    return address(sub_1129c901Address)
}

function sub_125f2c50(?) {
    require calldata.size - 4 >= 64
    return sub_125f2c50[arg1][arg2]
}

function sub_12c5e002(?) {
    require calldata.size - 4 >= 32
    return sub_12c5e002[arg1]
}

function todaySupply() {
    return todaySupply
}

function sub_14a491a3(?) {
    require calldata.size - 4 >= 32
    return sub_14a491a3[arg1]
}

function sub_17bdd815(?) {
    require calldata.size - 4 >= 64
    return sub_17bdd815[arg1][arg2]
}

function sub_1aed04b3(?) {
    return bool(sub_1aed04b3)
}

function sub_1d4a26d7(?) {
    require calldata.size - 4 >= 32
    return sub_0cbed5ef[arg1]
}

function sub_1d6cf719(?) {
    require calldata.size - 4 >= 64
    return sub_1d6cf719[arg1][arg2]
}

function sub_261a9fbe(?) {
    require calldata.size - 4 >= 32
    return sub_261a9fbe[arg1]
}

function liquidityAddress() {
    return address(liquidityAddress)
}

function sub_343b9d76(?) {
    return sub_343b9d76
}

function authorityAddress() {
    return authorityAddress
}

function sub_3ff59a52(?) {
    return bool(sub_3ff59a52)
}

function vaultAddress() {
    return address(vaultAddress)
}

function sub_46d65919(?) {
    require calldata.size - 4 >= 32
    return sub_46d65919[arg1]
}

function sub_4719dd70(?) {
    require calldata.size - 4 >= 32
    return sub_4719dd70[arg1]
}

function staking() {
    return staking
}

function sub_4dfe282e(?) {
    return sub_4dfe282e
}

function whiteListAddress() {
    return address(whiteListAddress)
}

function sub_574f7244(?) {
    return sub_574f7244
}

function sub_5b1a15de(?) {
    return sub_5b1a15de
}

function implementation() {
    return implementationAddress
}

function sub_6051254e(?) {
    return address(sub_6051254eAddress)
}

function sub_669329ce(?) {
    return sub_669329ce
}

function sub_6a4f1172(?) {
    return sub_6a4f1172
}

function sub_6b1bd5af(?) {
    require calldata.size - 4 >= 32
    return sub_6b1bd5af[arg1]
}

function registry() {
    return registryAddress
}

function sub_84d6dffc(?) {
    return sub_84d6dffc
}

function INTERVAL() {
    return INTERVAL
}

function sub_8ae3529e(?) {
    return sub_8ae3529e
}

function primaryOwner() {
    return primaryOwner
}

function sub_92c74982(?) {
    return sub_92c74982
}

function sub_933bccd7(?) {
    return sub_933bccd7
}

function sub_98299f77(?) {
    require calldata.size - 4 >= 64
    return bool(stor46[arg1][arg2])
}

function sub_a504dcbb(?) {
    require calldata.size - 4 >= 32
    return sub_a504dcbb[arg1]
}

function managementFee() {
    return managementFee
}

function sub_a8311533(?) {
    return sub_a8311533
}

function sub_a835fb94(?) {
    return sub_a835fb94
}

function smartSwapAddress() {
    return address(smartSwapAddress)
}

function mainTokenAddress() {
    return address(mainTokenAddress)
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

function sub_dac563d0(?) {
    return sub_dac563d0
}

function sub_db9c5355(?) {
    require calldata.size - 4 >= 64
    return sub_db9c5355[arg1][arg2]
}

function sub_fc0546d1(?) {
    require calldata.size - 4 >= 32
    return sub_fc0546d1[arg1]
}

function _fallback() payable {
    revert with 0, 'ERR_CAN'T_FORCE_ETH'
}

function initialize() {
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
}

function sub_eb830508(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    staking = arg1
    return 1
}

function sub_5e7a048d(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_8ae3529e = arg1
    return 1
}

function sub_6952fd51(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_92c74982 = arg1
    return 1
}

function sub_9ed6beef(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_933bccd7 = arg1
    return 1
}

function sub_c6c65c8a(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_a835fb94 = arg1
    return 1
}

function sub_dae6fa7e(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_5b1a15de = arg1
    return 1
}

function sub_994f2253(?) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    sub_1aed04b3 = uint8(arg1)
    return 1
}

function changePrimaryOwner() {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function sub_e1cf5573(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= 100:
        revert with 0, 'ERR_SHOULD_BE_LESS_THAN_100'
    sub_343b9d76 = arg1
    return 1
}

function sub_eb2e2782(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg1 >= 100:
        revert with 0, 'ERR_SHOULD_BE_LESS_THAN_100'
    sub_669329ce = arg1
    return 1
}

function sub_64568662(?) {
    require calldata.size - 4 >= 160
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    storFCC3 = arg1
    storBD6C = arg2
    storD390 = arg3
    stor8BD1 = arg4
    stor4B5B = arg5
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

function sub_66918230(?) {
    require calldata.size - 4 >= 64
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if 1 == arg1:
        sub_a8311533 = arg2
    else:
        if 2 == arg1:
            sub_1035e83b = arg2
        else:
            if 3 == arg1:
                INTERVAL = arg2
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

function sub_a97ab890(?) {
    require ext_code.size(address(currencyPricesAddress))
    staticcall address(currencyPricesAddress).getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args address(mainTokenAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentMarketPrice = ext_call.return_data[0]
    return 1
}

function getAuctionDetails() {
    require ext_code.size(address(currencyPricesAddress))
    staticcall address(currencyPricesAddress).getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args address(mainTokenAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return todaySupply, sub_574f7244, sub_dac563d0, sub_6a4f1172, totalContribution, sub_4dfe282e, ext_call.return_data[0]
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

function sub_ae259ca8(?) {
    require calldata.size - 4 >= 96
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if address(mainTokenAddress) == arg1:
        revert with 0, 'ERR_CANT_TAKE_OUT_MAIN_TOKEN'
    require ext_code.size(arg1)
    if this.address != this.address:
        call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), address(arg3), arg2
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    return 1
}

function sub_5ad79150(?) {
    if eth.balance(this.address):
        if not eth.balance(this.address):
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 <= eth.balance(this.address)
            require ext_code.size(address(liquidityAddress))
            call address(liquidityAddress).0xab16b9c9 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
        else:
            require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
            call address(sub_6051254eAddress) with:
               value sub_669329ce * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
            require ext_code.size(address(liquidityAddress))
            call address(liquidityAddress).0xab16b9c9 with:
               value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        currentMarketPrice = ext_call.return_data[0]
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f5357415000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
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
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f5357415000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
    return 1
}

function sub_3a5d4213(?) {
    require calldata.size - 4 >= 256
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    if not arg5:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg6:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg7:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if sub_3ff59a52:
        revert with 0, 'ERR_OWNER_INTIALIZED_ALREADY'
    if arg5 == arg6:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg6 == arg7:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg5 == arg7:
        revert with 0, 'ERR_SAME_ADDRESS'
    primaryOwner = arg5
    authorityAddress = arg7
    systemAddress = arg6
    sub_3ff59a52 = 1
    contractsRegistryAddress = arg8
    sub_84d6dffc = 1
    totalContribution = 25 * 10^14
    sub_6a4f1172 = 5 * 10^11
    sub_4dfe282e = 5 * 10^11
    todaySupply = 50000 * 10^18
    sub_5b1a15de = 150
    managementFee = 2
    staking = 2
    sub_343b9d76 = 90
    sub_669329ce = 90
    sub_92c74982 = 2
    sub_a835fb94 = 100
    sub_8ae3529e = 10
    sub_1aed04b3 = 1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f5357415000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x455343524f570000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e5f50524f54454354494f4e0000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
    sub_46d65919[stor24] = sub_343b9d76
    sub_1035e83b = arg1
    sub_a8311533 = arg2
    INTERVAL = arg3
    sub_933bccd7 = arg4
    storFCC3 = 50
    storBD6C = 40
    storD390 = 30
    stor8BD1 = 20
    stor4B5B = 10
}

function sub_9a61f048(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_84d6dffc:
        revert with 0, 'ERR_AUCTION_DAY'
    if stor46[arg1][address(msg.sender)]:
        revert with 0, 'ERR_ALREADY_TOKEN_DISTBUTED'
    if not sub_14a491a3[arg1]:
        require sub_fc0546d1[arg1]
        if not sub_12c5e002[arg1]:
            require 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
            require sub_46d65919[arg1] <= 100
            if not 0 / sub_fc0546d1[arg1]:
                if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                    require 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / sub_fc0546d1[arg1])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_1035e83b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(escrowAddress), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require ext_code.size(address(escrowAddress))
                    call address(escrowAddress).depositFee(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    if this.address != this.address:
                        call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0
                    else:
                        call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                    require 0 <= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_1129c901Address), 0 / sub_fc0546d1[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require 0 <= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(sub_1129c901Address))
                    call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, 0 / sub_fc0546d1[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor46[arg1][address(msg.sender)] = 1
                    require 0 <= 0 / sub_fc0546d1[arg1]
                    emit 0x34b7e588: 0 / sub_fc0546d1[arg1], 0 / sub_fc0546d1[arg1], 0, msg.sender, arg1
                else:
                    if not 0 / sub_fc0546d1[arg1]:
                        require managementFee <= 100
                        require -managementFee + 100
                        require 0 <= 0 / -managementFee + 100
                        require 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
                        require (0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0 / -managementFee + 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / -managementFee + 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), 0 / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, 0 / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= 0 / sub_fc0546d1[arg1]
                        emit 0x34b7e588: 0 / sub_fc0546d1[arg1], 0 / sub_fc0546d1[arg1], 0, msg.sender, arg1
                    else:
                        require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 0 / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                        if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100:
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                            require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100))
                        else:
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 == 100
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]), 0, msg.sender, arg1
            else:
                require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 0 / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                    require 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / sub_fc0546d1[arg1])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_1035e83b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(escrowAddress), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require ext_code.size(address(escrowAddress))
                    call address(escrowAddress).depositFee(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    if this.address != this.address:
                        call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                    else:
                        call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                    require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                    require ext_code.size(address(sub_1129c901Address))
                    call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor46[arg1][address(msg.sender)] = 1
                    require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                    emit 0x34b7e588: 0 / sub_fc0546d1[arg1], (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                else:
                    if not 0 / sub_fc0546d1[arg1]:
                        require managementFee <= 100
                        require -managementFee + 100
                        require 0 <= 0 / -managementFee + 100
                        require 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
                        require (0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0 / -managementFee + 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / -managementFee + 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 0 / sub_fc0546d1[arg1]
                        emit 0x34b7e588: 0 / sub_fc0546d1[arg1], (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 0 / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                        if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100:
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                            require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100))
                        else:
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 == 100
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 0 / sub_fc0546d1[arg1] / 100) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
        else:
            if not sub_12c5e002[arg1]:
                require sub_fc0546d1[arg1]
                require 2 * 0 / sub_fc0546d1[arg1] >= 0 / sub_fc0546d1[arg1]
                require sub_46d65919[arg1] <= 100
                if not 0 / sub_fc0546d1[arg1]:
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require 2 * 0 / sub_fc0546d1[arg1] >= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args (2 * 0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), 2 * 0 / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, 2 * 0 / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                        emit 0x34b7e588: 2 * 0 / sub_fc0546d1[arg1], 2 * 0 / sub_fc0546d1[arg1], 0, msg.sender, arg1
                    else:
                        if not 2 * 0 / sub_fc0546d1[arg1]:
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 2 * 0 / sub_fc0546d1[arg1] >= 2 * 0 / sub_fc0546d1[arg1]
                            require (0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), 2 * 0 / sub_fc0546d1[arg1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, 2 * 0 / sub_fc0546d1[arg1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= 2 * 0 / sub_fc0546d1[arg1]
                            emit 0x34b7e588: 2 * 0 / sub_fc0546d1[arg1], 2 * 0 / sub_fc0546d1[arg1], 0, msg.sender, arg1
                        else:
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 2 * 0 / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                                require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                                require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100))
                            else:
                                require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                                require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                                require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                else:
                    require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 0 / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require 2 * 0 / sub_fc0546d1[arg1] >= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args (2 * 0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                        emit 0x34b7e588: 2 * 0 / sub_fc0546d1[arg1], (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        if not 2 * 0 / sub_fc0546d1[arg1]:
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 2 * 0 / sub_fc0546d1[arg1] >= 2 * 0 / sub_fc0546d1[arg1]
                            require (0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= 2 * 0 / sub_fc0546d1[arg1]
                            emit 0x34b7e588: 2 * 0 / sub_fc0546d1[arg1], (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                        else:
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 2 * 0 / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                                require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                                require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100))
                            else:
                                require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                                require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) >= 2 * 0 / sub_fc0546d1[arg1]
                                require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (2 * 0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * 2 * 0 / sub_fc0546d1[arg1] / 100) + (2 * 0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
            else:
                require sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_12c5e002[arg1] == sub_1d6cf719[arg1][address(msg.sender)]
                require sub_fc0546d1[arg1]
                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) >= 0 / sub_fc0546d1[arg1]
                require sub_46d65919[arg1] <= 100
                if not 0 / sub_fc0546d1[arg1]:
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                    else:
                        if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                        else:
                            require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                else:
                    require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 0 / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                        else:
                            require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (0 / sub_fc0546d1[arg1]) - ((100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100), (100 * 0 / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * 0 / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
    else:
        require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_14a491a3[arg1] == sub_1d6cf719[arg1][address(msg.sender)]
        require sub_fc0546d1[arg1]
        if not sub_12c5e002[arg1]:
            require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
            require sub_46d65919[arg1] <= 100
            if not sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]:
                if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                    require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_1035e83b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(escrowAddress), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require ext_code.size(address(escrowAddress))
                    call address(escrowAddress).depositFee(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    if this.address != this.address:
                        call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 0
                    else:
                        call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                    require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_1129c901Address), sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(sub_1129c901Address))
                    call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor46[arg1][address(msg.sender)] = 1
                    require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    emit 0x34b7e588: sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], 0, msg.sender, arg1
                else:
                    if not sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]:
                        require managementFee <= 100
                        require -managementFee + 100
                        require 0 <= 0 / -managementFee + 100
                        require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require (0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0 / -managementFee + 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / -managementFee + 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        emit 0x34b7e588: sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], 0, msg.sender, arg1
                    else:
                        require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                        if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100:
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                            require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100))
                        else:
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 == 100
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
            else:
                require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                    require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, sub_1035e83b
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(escrowAddress), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require ext_code.size(address(escrowAddress))
                    call address(escrowAddress).depositFee(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(mainTokenAddress))
                    if this.address != this.address:
                        call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                    else:
                        call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                    require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(mainTokenAddress))
                    call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                    require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    require ext_code.size(address(sub_1129c901Address))
                    call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor46[arg1][address(msg.sender)] = 1
                    require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                    emit 0x34b7e588: sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                else:
                    if not sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]:
                        require managementFee <= 100
                        require -managementFee + 100
                        require 0 <= 0 / -managementFee + 100
                        require sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require (0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0 / -managementFee + 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args (0 / -managementFee + 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                        emit 0x34b7e588: sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1], (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                        if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100:
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 <= 0 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                            require 0 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100))
                        else:
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 == 100
                            require managementFee <= 100
                            require -managementFee + 100
                            require sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 <= 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100
                            require (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                            require 100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100 >= sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), (100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((100 * sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100 / -managementFee + 100) - (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_0cbed5ef[stor45[arg1][address(msg.sender)]] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
        else:
            if not sub_12c5e002[arg1]:
                require sub_fc0546d1[arg1]
                require (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                require sub_46d65919[arg1] <= 100
                if not sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]:
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                    else:
                        if not (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                        else:
                            require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                else:
                    require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        if not (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                        else:
                            require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), ((0 / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (0 / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
            else:
                require sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_12c5e002[arg1] == sub_1d6cf719[arg1][address(msg.sender)]
                require sub_fc0546d1[arg1]
                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) >= sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]
                require sub_46d65919[arg1] <= 100
                if not sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]:
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, 0
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                    else:
                        if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                        else:
                            require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, 0
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require 0 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), 0, msg.sender, arg1
                else:
                    require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] == -sub_46d65919[arg1] + 100
                    if not sub_0cbed5ef[stor45[arg1][address(msg.sender)]]:
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                             gas gas_remaining wei
                            args ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, sub_1035e83b
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(escrowAddress), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require ext_code.size(address(escrowAddress))
                        call address(escrowAddress).depositFee(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(mainTokenAddress))
                        if this.address != this.address:
                            call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        else:
                            call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor46[arg1][address(msg.sender)] = 1
                        require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                        emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                    else:
                        if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]):
                            require managementFee <= 100
                            require -managementFee + 100
                            require 0 <= 0 / -managementFee + 100
                            require 0 / -managementFee + 100 >= 0
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, sub_1035e83b
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(escrowAddress), 0 / -managementFee + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require ext_code.size(address(escrowAddress))
                            call address(escrowAddress).depositFee(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / -managementFee + 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
                        else:
                            require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) == sub_0cbed5ef[stor45[arg1][address(msg.sender)]]
                            if not (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100:
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 0 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 0 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((0 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            else:
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 == 100
                                require managementFee <= 100
                                require -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 <= 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100
                                require (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 >= 0
                                require 100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100 >= (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).mintTokens(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, sub_1035e83b
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(escrowAddress), (100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                                require ext_code.size(address(escrowAddress))
                                call address(escrowAddress).depositFee(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ((100 * (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100 / -managementFee + 100) - ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(mainTokenAddress))
                            if this.address != this.address:
                                call address(mainTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            else:
                                call address(mainTokenAddress).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(mainTokenAddress))
                            call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_1129c901Address), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            require ext_code.size(address(sub_1129c901Address))
                            call address(sub_1129c901Address).depositToken(uint256 rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor46[arg1][address(msg.sender)] = 1
                            require (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100 <= ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1])
                            emit 0x34b7e588: ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]), ((sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1] * sub_0cbed5ef[stor45[arg1][address(msg.sender)]]) / 100) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_12c5e002[arg1] / sub_fc0546d1[arg1]) + (sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - ((100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100), (100 * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) - (sub_46d65919[arg1] * sub_1d6cf719[arg1][address(msg.sender)] * sub_14a491a3[arg1] / sub_fc0546d1[arg1]) / 100, msg.sender, arg1
    return 1
}

function sub_ab16b9c9(?) payable {
    if block.timestamp < sub_1035e83b:
        revert with 0, 'ERR_AUCTION_DAY_NOT_STARTED_YET'
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0xc4927578 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_NOT_ALLOWED_IN_AUCTION'
    require ext_code.size(address(currencyPricesAddress))
    staticcall address(currencyPricesAddress).getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
    if not msg.value:
        require sub_dac563d0 >= sub_dac563d0
        if sub_dac563d0 <= sub_4dfe282e:
            if not msg.value:
                require ext_code.size(address(sub_1129c901Address))
                call address(sub_1129c901Address).0xdeb8595d with:
                     gas gas_remaining wei
                    args sub_84d6dffc, msg.sender
            else:
                require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                require ext_code.size(address(sub_1129c901Address))
                call address(sub_1129c901Address).0xdeb8595d with:
                   value sub_46d65919[stor24] * msg.value / 100 wei
                     gas gas_remaining wei
                    args sub_84d6dffc, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_1aed04b3:
                if eth.balance(this.address):
                    if not eth.balance(this.address):
                        call address(sub_6051254eAddress) with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= eth.balance(this.address)
                        require ext_code.size(address(liquidityAddress))
                        call address(liquidityAddress).0xab16b9c9 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    else:
                        require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                        call address(sub_6051254eAddress) with:
                           value sub_669329ce * eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                        require ext_code.size(address(liquidityAddress))
                        call address(liquidityAddress).0xab16b9c9 with:
                           value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    currentMarketPrice = ext_call.return_data[0]
            if not msg.value:
                if sub_84d6dffc >= sub_933bccd7:
                    if not currentMarketPrice:
                        revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                    require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                    require ext_code.size(address(mainTokenAddress))
                    staticcall address(mainTokenAddress).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_17bdd815[stor24][address(msg.sender)]:
                        require currentMarketPrice
                        if not 0 / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / currentMarketPrice, block.timestamp
                    else:
                        require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                        require currentMarketPrice
                        if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require sub_dac563d0 >= sub_dac563d0
                require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                    emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                    if msg.sender != msg.sender:
                        emit 0x58a69a27: msg.sender, msg.sender
                else:
                    idx = 1
                    s = 0
                    t = 0
                    u = 0
                    u = 0
                    while idx <= 5:
                        mem[0] = sub_db9c5355[stor24][idx]
                        mem[32] = sha3(sub_84d6dffc, 41)
                        if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                            if not t:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if t:
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if sub_db9c5355[stor24][idx] != msg.sender:
                            if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                            else:
                                sub_db9c5355[stor24][idx] = msg.sender
                                mem[0] = msg.sender
                                mem[32] = sha3(sub_84d6dffc, 45)
                                sub_125f2c50[stor24][address(msg.sender)] = idx
                        idx = idx + 1
                        s = sub_db9c5355[stor24][idx]
                        t = 1
                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                        u = sub_db9c5355[stor24][idx]
                        continue 
                    if not address(s):
                        emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        if address(s) != msg.sender:
                            sub_125f2c50[stor24][address(s)] = 0
                        emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
            else:
                require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                if sub_84d6dffc >= sub_933bccd7:
                    if not currentMarketPrice:
                        revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                    require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                    require ext_code.size(address(mainTokenAddress))
                    staticcall address(mainTokenAddress).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                        require currentMarketPrice
                        if not 0 / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / currentMarketPrice, block.timestamp
                    else:
                        require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                        require currentMarketPrice
                        if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                    emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                    if msg.sender != msg.sender:
                        emit 0x58a69a27: msg.sender, msg.sender
                else:
                    idx = 1
                    s = 0
                    t = 0
                    u = 0
                    u = 0
                    while idx <= 5:
                        mem[0] = sub_db9c5355[stor24][idx]
                        mem[32] = sha3(sub_84d6dffc, 41)
                        if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                            if not t:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if t:
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if sub_db9c5355[stor24][idx] != msg.sender:
                            if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                            else:
                                sub_db9c5355[stor24][idx] = msg.sender
                                mem[0] = msg.sender
                                mem[32] = sha3(sub_84d6dffc, 45)
                                sub_125f2c50[stor24][address(msg.sender)] = idx
                        idx = idx + 1
                        s = sub_db9c5355[stor24][idx]
                        t = 1
                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                        u = sub_db9c5355[stor24][idx]
                        continue 
                    if not address(s):
                        emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        if address(s) != msg.sender:
                            sub_125f2c50[stor24][address(s)] = 0
                        emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
        else:
            require sub_dac563d0 >= sub_dac563d0
            require sub_4dfe282e <= sub_dac563d0
            if not sub_dac563d0 - sub_4dfe282e:
                require ext_call.return_data[0]
                if 0 == 0 / ext_call.return_data[0]:
                    if not msg.value:
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value sub_46d65919[stor24] * msg.value / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value:
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                else:
                    call msg.sender with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 / ext_call.return_data[0] <= msg.value
                    if not msg.value - (0 / ext_call.return_data[0]):
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require (msg.value * sub_46d65919[stor24]) - (0 / ext_call.return_data[0] * sub_46d65919[stor24]) / msg.value - (0 / ext_call.return_data[0]) == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value (msg.value * sub_46d65919[stor24]) - (0 / ext_call.return_data[0] * sub_46d65919[stor24]) / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value - (0 / ext_call.return_data[0]):
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / msg.value - (0 / ext_call.return_data[0]) == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
            else:
                require (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / sub_dac563d0 - sub_4dfe282e == 10^18
                require ext_call.return_data[0]
                if 0 == (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]:
                    if not msg.value:
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value sub_46d65919[stor24] * msg.value / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value:
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                else:
                    call msg.sender with:
                       value (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] <= msg.value
                    if not msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]):
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require (msg.value * sub_46d65919[stor24]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * sub_46d65919[stor24]) / msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]) == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value (msg.value * sub_46d65919[stor24]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * sub_46d65919[stor24]) / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]):
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]) == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
    else:
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
        require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
        if (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 <= sub_4dfe282e:
            if not msg.value:
                require ext_code.size(address(sub_1129c901Address))
                call address(sub_1129c901Address).0xdeb8595d with:
                     gas gas_remaining wei
                    args sub_84d6dffc, msg.sender
            else:
                require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                require ext_code.size(address(sub_1129c901Address))
                call address(sub_1129c901Address).0xdeb8595d with:
                   value sub_46d65919[stor24] * msg.value / 100 wei
                     gas gas_remaining wei
                    args sub_84d6dffc, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_1aed04b3:
                if eth.balance(this.address):
                    if not eth.balance(this.address):
                        call address(sub_6051254eAddress) with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= eth.balance(this.address)
                        require ext_code.size(address(liquidityAddress))
                        call address(liquidityAddress).0xab16b9c9 with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    else:
                        require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                        call address(sub_6051254eAddress) with:
                           value sub_669329ce * eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                        require ext_code.size(address(liquidityAddress))
                        call address(liquidityAddress).0xab16b9c9 with:
                           value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    currentMarketPrice = ext_call.return_data[0]
            if not msg.value:
                if sub_84d6dffc >= sub_933bccd7:
                    if not currentMarketPrice:
                        revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                    require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                    require ext_code.size(address(mainTokenAddress))
                    staticcall address(mainTokenAddress).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_17bdd815[stor24][address(msg.sender)]:
                        require currentMarketPrice
                        if not 0 / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / currentMarketPrice, block.timestamp
                    else:
                        require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                        require currentMarketPrice
                        if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require sub_dac563d0 >= sub_dac563d0
                require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                    emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                    if msg.sender != msg.sender:
                        emit 0x58a69a27: msg.sender, msg.sender
                else:
                    idx = 1
                    s = 0
                    t = 0
                    u = 0
                    u = 0
                    while idx <= 5:
                        mem[0] = sub_db9c5355[stor24][idx]
                        mem[32] = sha3(sub_84d6dffc, 41)
                        if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                            if not t:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if t:
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if sub_db9c5355[stor24][idx] != msg.sender:
                            if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                            else:
                                sub_db9c5355[stor24][idx] = msg.sender
                                mem[0] = msg.sender
                                mem[32] = sha3(sub_84d6dffc, 45)
                                sub_125f2c50[stor24][address(msg.sender)] = idx
                        idx = idx + 1
                        s = sub_db9c5355[stor24][idx]
                        t = 1
                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                        u = sub_db9c5355[stor24][idx]
                        continue 
                    if not address(s):
                        emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        if address(s) != msg.sender:
                            sub_125f2c50[stor24][address(s)] = 0
                        emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
            else:
                require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                if sub_84d6dffc >= sub_933bccd7:
                    if not currentMarketPrice:
                        revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                    require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                    require ext_code.size(address(mainTokenAddress))
                    staticcall address(mainTokenAddress).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                        require currentMarketPrice
                        if not 0 / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / currentMarketPrice, block.timestamp
                    else:
                        require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                        require currentMarketPrice
                        if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        else:
                            require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                            mem[200 len 28]
                        require ext_code.size(address(mainTokenAddress))
                        call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                    emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                    if msg.sender != msg.sender:
                        emit 0x58a69a27: msg.sender, msg.sender
                else:
                    idx = 1
                    s = 0
                    t = 0
                    u = 0
                    u = 0
                    while idx <= 5:
                        mem[0] = sub_db9c5355[stor24][idx]
                        mem[32] = sha3(sub_84d6dffc, 41)
                        if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                            if not t:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if t:
                            if address(s) == msg.sender:
                                idx = idx + 1
                                s = s
                                t = t
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            sub_db9c5355[stor24][idx] = address(s)
                            mem[0] = address(s)
                            mem[32] = sha3(sub_84d6dffc, 45)
                            sub_125f2c50[stor24][address(s)] = idx
                            idx = idx + 1
                            s = sub_db9c5355[stor24][idx]
                            t = t
                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                            u = sub_db9c5355[stor24][idx]
                            continue 
                        if sub_db9c5355[stor24][idx] != msg.sender:
                            if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                            else:
                                sub_db9c5355[stor24][idx] = msg.sender
                                mem[0] = msg.sender
                                mem[32] = sha3(sub_84d6dffc, 45)
                                sub_125f2c50[stor24][address(msg.sender)] = idx
                        idx = idx + 1
                        s = sub_db9c5355[stor24][idx]
                        t = 1
                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                        u = sub_db9c5355[stor24][idx]
                        continue 
                    if not address(s):
                        emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        if address(s) != msg.sender:
                            sub_125f2c50[stor24][address(s)] = 0
                        emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                        if msg.sender != msg.sender:
                            emit 0x58a69a27: msg.sender, msg.sender
        else:
            require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
            require sub_4dfe282e <= (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0
            if not (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 - sub_4dfe282e:
                require ext_call.return_data[0]
                if 0 == 0 / ext_call.return_data[0]:
                    if not msg.value:
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value sub_46d65919[stor24] * msg.value / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value:
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                else:
                    call msg.sender with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 / ext_call.return_data[0] <= msg.value
                    if not msg.value - (0 / ext_call.return_data[0]):
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require (msg.value * sub_46d65919[stor24]) - (0 / ext_call.return_data[0] * sub_46d65919[stor24]) / msg.value - (0 / ext_call.return_data[0]) == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value (msg.value * sub_46d65919[stor24]) - (0 / ext_call.return_data[0] * sub_46d65919[stor24]) / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value - (0 / ext_call.return_data[0]):
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / msg.value - (0 / ext_call.return_data[0]) == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - (0 / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
            else:
                require (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 - sub_4dfe282e == 10^18
                require ext_call.return_data[0]
                if 0 == (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]:
                    if not msg.value:
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require sub_46d65919[stor24] * msg.value / msg.value == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value sub_46d65919[stor24] * msg.value / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value:
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / (ext_call.return_data[0] * msg.value / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / (ext_call.return_data[0] * msg.value / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, (ext_call.return_data[0] * msg.value / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += ext_call.return_data[0] * msg.value / 10^18
                        require (ext_call.return_data[0] * msg.value / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += ext_call.return_data[0] * msg.value / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value, ext_call.return_data[0] * msg.value / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                else:
                    call msg.sender with:
                       value (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] <= msg.value
                    if not msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]):
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    else:
                        require (msg.value * sub_46d65919[stor24]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * sub_46d65919[stor24]) / msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]) == sub_46d65919[stor24]
                        require ext_code.size(address(sub_1129c901Address))
                        call address(sub_1129c901Address).0xdeb8595d with:
                           value (msg.value * sub_46d65919[stor24]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * sub_46d65919[stor24]) / 100 wei
                             gas gas_remaining wei
                            args sub_84d6dffc, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_1aed04b3:
                        if eth.balance(this.address):
                            if not eth.balance(this.address):
                                call address(sub_6051254eAddress) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                            else:
                                require sub_669329ce * eth.balance(this.address) / eth.balance(this.address) == sub_669329ce
                                call address(sub_6051254eAddress) with:
                                   value sub_669329ce * eth.balance(this.address) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require sub_669329ce * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(address(liquidityAddress))
                                call address(liquidityAddress).0xab16b9c9 with:
                                   value eth.balance(this.address) - (sub_669329ce * eth.balance(this.address) / 100) wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            currentMarketPrice = ext_call.return_data[0]
                    if not msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]):
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 10^ext_call.return_data[31 len 1] * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^uint8(ext_call.return_data[0]) * sub_17bdd815[stor24][address(msg.sender)] / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require sub_dac563d0 >= sub_dac563d0
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        require sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        require sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), 0, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                    else:
                        require (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]) == ext_call.return_data[0]
                        if sub_84d6dffc >= sub_933bccd7:
                            if not currentMarketPrice:
                                revert with 0, 'ERR_TOKEN_PRICE_NOT_SET'
                            require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] >= sub_17bdd815[stor24][address(msg.sender)]
                            require ext_code.size(address(mainTokenAddress))
                            staticcall address(mainTokenAddress).decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)]:
                                require currentMarketPrice
                                if not 0 / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * 0 / currentMarketPrice / 0 / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * 0 / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / currentMarketPrice, block.timestamp
                            else:
                                require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_17bdd815[stor24][address(msg.sender)] == 10^ext_call.return_data[31 len 1]
                                require currentMarketPrice
                                if not ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice:
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                else:
                                    require sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice / ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1]) + (sub_17bdd815[stor24][address(msg.sender)] * 10^ext_call.return_data[31 len 1]) / currentMarketPrice == sub_a835fb94
                                    require ext_code.size(address(mainTokenAddress))
                                    staticcall address(mainTokenAddress).balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < sub_a835fb94 * ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0xfe4552525f555345525f444f45535f4e4f545f484156455f455155414c5f42414c414e43,
                                                    mem[200 len 28]
                                require ext_code.size(address(mainTokenAddress))
                                call address(mainTokenAddress).lockToken(address rg1, uint256 rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0])) + (sub_17bdd815[stor24][address(msg.sender)] * 10^uint8(ext_call.return_data[0])) / currentMarketPrice, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_dac563d0 >= sub_dac563d0
                        sub_dac563d0 += (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_17bdd815[stor24][address(msg.sender)] = ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)]
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_1d6cf719[stor24][address(msg.sender)] >= sub_1d6cf719[stor24][address(msg.sender)]
                        sub_1d6cf719[stor24][address(msg.sender)] += (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_6b1bd5af[address(msg.sender)] >= sub_6b1bd5af[address(msg.sender)]
                        sub_6b1bd5af[address(msg.sender)] += (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        require ((msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) + sub_fc0546d1[stor24] >= sub_fc0546d1[stor24]
                        sub_fc0546d1[stor24] += (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
                        if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][5]]:
                            emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                            if msg.sender != msg.sender:
                                emit 0x58a69a27: msg.sender, msg.sender
                        else:
                            idx = 1
                            s = 0
                            t = 0
                            u = 0
                            u = 0
                            while idx <= 5:
                                mem[0] = sub_db9c5355[stor24][idx]
                                mem[32] = sha3(sub_84d6dffc, 41)
                                if sub_1d6cf719[stor24][address(msg.sender)] < sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                    if not t:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if t:
                                    if address(s) == msg.sender:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                        u = sub_db9c5355[stor24][idx]
                                        continue 
                                    sub_db9c5355[stor24][idx] = address(s)
                                    mem[0] = address(s)
                                    mem[32] = sha3(sub_84d6dffc, 45)
                                    sub_125f2c50[stor24][address(s)] = idx
                                    idx = idx + 1
                                    s = sub_db9c5355[stor24][idx]
                                    t = t
                                    u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                    u = sub_db9c5355[stor24][idx]
                                    continue 
                                if sub_db9c5355[stor24][idx] != msg.sender:
                                    if sub_1d6cf719[stor24][address(msg.sender)] <= sub_1d6cf719[stor24][stor44[stor24][idx]]:
                                        if sub_db9c5355[stor24][idx] != msg.sender:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                            u = sub_db9c5355[stor24][idx]
                                            continue 
                                    else:
                                        sub_db9c5355[stor24][idx] = msg.sender
                                        mem[0] = msg.sender
                                        mem[32] = sha3(sub_84d6dffc, 45)
                                        sub_125f2c50[stor24][address(msg.sender)] = idx
                                idx = idx + 1
                                s = sub_db9c5355[stor24][idx]
                                t = 1
                                u = sub_1d6cf719[stor24][stor44[stor24][idx]]
                                u = sub_db9c5355[stor24][idx]
                                continue 
                            if not address(s):
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
                            else:
                                if address(s) != msg.sender:
                                    sub_125f2c50[stor24][address(s)] = 0
                                emit 0x3d3403d7: sub_dac563d0, msg.value - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0]), (msg.value * ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * msg.value / 10^18) + (10^18 * sub_dac563d0) - (10^18 * sub_4dfe282e) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, sub_1d6cf719[stor24][address(msg.sender)], currentMarketPrice, sub_84d6dffc, msg.sender, 0
                                if msg.sender != msg.sender:
                                    emit 0x58a69a27: msg.sender, msg.sender
    return 1
}



}
