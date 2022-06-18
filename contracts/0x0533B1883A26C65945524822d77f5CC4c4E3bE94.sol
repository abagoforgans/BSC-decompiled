contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#  - sub_bbef368d(?)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 MAX_MINT_PER_ADDRESS; offset 208
uint8 stor0; offset 216
uint16 sub_257047d7; offset 176
uint16 MAX_SUPPLY; offset 192
uint64 stor0; offset 216
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 priceUSD;
uint256 salesCounter;
address adminAddress;
address USDTAddress;
address stor5;
address stor6;
address stor7;
mapping of uint8 sub_1cdce9fe;

function sub_1cdce9fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1cdce9fe[arg1]
}

function sub_257047d7(?) {
    return sub_257047d7
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function MAX_MINT_PER_ADDRESS() {
    return MAX_MINT_PER_ADDRESS
}

function salesActive() {
    return bool(uint8(stor0.field_216))
}

function salesCounter() {
    return salesCounter
}

function owner() {
    return owner
}

function priceUSD() {
    return priceUSD
}

function USDT() {
    return USDTAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRandomizer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setPriceUSD(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceUSD = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function sub_032d7ed9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = address(arg1)
}

function sub_a331fcd8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
}

function setSaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0.field_216 % 1099511627776 = arg1 % 1099511627776
}

function safeWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_a8f70d0f(?) {
    require ext_code.size(stor7)
    staticcall stor7.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if priceUSD and 10^18 > -1 / priceUSD:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (10^18 * priceUSD / ext_call.return_data[0])
}

function sub_21557d11(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    USDTAddress = arg4
    adminAddress = arg5
    priceUSD = arg6
    if not uint8(stor0.field_168):
        Mask(88, 0, stor0.field_168) = 0
}



}
