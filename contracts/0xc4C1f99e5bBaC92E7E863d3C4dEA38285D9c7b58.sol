contract main {




// =====================  Runtime code  =====================


address owner;
array of struct requests;
mapping of uint8 stor2;
uint32 sub_73d6bcc5;
address sub_6df566d7Address; offset 32
address sub_ce125a81Address;
mapping of uint256 sub_60c71861;
mapping of uint256 gasLimit;
uint256 customGasPrice;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function customGasPrice() {
    return customGasPrice
}

function sub_60c71861(?) {
    require calldata.size - 4 >= 32
    return sub_60c71861[arg1]
}

function sub_6df566d7(?) {
    return sub_6df566d7Address
}

function sub_73d6bcc5(?) {
    return sub_73d6bcc5
}

function requests(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < requests.length
    return requests[arg1].field_0, requests[arg1].field_256, requests[arg1].field_512, requests[arg1].field_768
}

function isAllowedAddress(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_ce125a81(?) {
    return sub_ce125a81Address
}

function gasLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    return gasLimit[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getOracleFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (gasLimit[arg1] * customGasPrice)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApproves_required(uint32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_73d6bcc5 = arg1
    return 1
}

function setCurrencyPrice(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_6df566d7Address = arg1
    return 1
}

function setCompanyOracle(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_ce125a81Address = arg1
    return 1
}

function changeAllowedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor2[address(arg1)] = uint8(arg2)
    return 1
}

function setCustomGasPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 24, 0xfe4552525f414c4c4f5745445f414444524553535f4f4e4c5900000000000000
    customGasPrice = arg1
    return 1
}

function setGasLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0, 32, 24, 0xfe4552525f414c4c4f5745445f414444524553535f4f4e4c5900000000000000
    gasLimit[arg1] = arg2
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 32, 24, 0xfe4552525f414c4c4f5745445f414444524553535f4f4e4c5900000000000000
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function oracleCallback(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_ce125a81Address != msg.sender:
        revert with 0, 'Wrong Oracle'
    if not sub_60c71861[arg1]:
        revert with 0, 'Wrong requestId'
    sub_60c71861[arg1] = 0
    require sub_60c71861[arg1] < requests.length
    require ext_code.size(requests[stor5[arg1]].field_0)
    call requests[stor5[arg1]].field_0.balanceCallback(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args requests[stor5[arg1]].field_768, requests[stor5[arg1]].field_512, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit CompanyOracle(sub_60c71861[arg1], arg2);
    return 1
}

function checkBalance(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor2[msg.sender]:
        revert with 0, 32, 24, 0xfe4552525f414c4c4f5745445f414444524553535f4f4e4c5900000000000000
    requests.length++
    requests[requests.length].field_0 = msg.sender
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = arg1
    require ext_code.size(sub_ce125a81Address)
    call sub_ce125a81Address.getBalance(uint256 rg1, address rg2, address rg3) with:
         gas gas_remaining wei
        args 1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_60c71861[ext_call.return_data[0]] = requests.length
    return requests.length
}

function checkBalances(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor2[msg.sender]:
        revert with 0, 32, 24, 0xfe4552525f414c4c4f5745445f414444524553535f4f4e4c5900000000000000
    requests.length++
    requests[requests.length].field_0 = msg.sender
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = arg1
    mem[484 len 0] = None
    require ext_code.size(sub_ce125a81Address)
    call sub_ce125a81Address.0x546b80fa with:
         gas gas_remaining wei
        args 1, address(arg2), Array(len=3, data=mem[484 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_60c71861[ext_call.return_data[0]] = requests.length
    return requests.length
}

function sub_7826a0b5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if sub_ce125a81Address != msg.sender:
        revert with 0, 'Wrong Oracle'
    if not sub_60c71861[cd[4]]:
        revert with 0, 'Wrong requestId'
    sub_60c71861[cd[4]] = 0
    require sub_60c71861[cd[4]] < requests.length
    require ext_code.size(requests[stor5[cd[4]]].field_768)
    staticcall requests[stor5[cd[4]]].field_768.getTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_6df566d7Address)
    staticcall sub_6df566d7Address.getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6df566d7Address)
    staticcall sub_6df566d7Address.getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Zero price'
    if not ext_call.return_data[0]:
        revert with 0, 'Zero price'
    require ext_call.return_data[0]
    require ('cd', 36).length
    require 2 < ('cd', 36).length
    require 1 < ('cd', 36).length
    require ext_code.size(requests[stor5[cd[4]]].field_0)
    call requests[stor5[cd[4]]].field_0.balancesCallback(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], requests[stor5[cd[4]]].field_512, ('cd', 36)[0], ('cd', 36)[2], ('cd', 36)[1], 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    require 1 < ('cd', 36).length
    require 2 < ('cd', 36).length
    emit CompanyOracle3(sub_60c71861[cd[4]], ('cd', 36)[0], ('cd', 36)[1], ('cd', 36)[2]);
    return 1
}



}
