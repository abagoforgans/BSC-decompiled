contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_188d1644;
uint256 whitelistCount;
uint256 tradeCount;
uint256 contractBalance;
uint256 sub_517311ea;
uint256 sub_f16dc884;
uint256 sub_f8db0ee6;
uint256 sub_84d94014;
address stor9;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint8 stor10; offset 176
uint128 stor10; offset 176
uint128 stor10; offset 168
uint128 stor10; offset 160
address stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint256 sub_ba27f50b;

function sub_188d1644(?) {
    return sub_188d1644
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function sub_517311ea(?) {
    return sub_517311ea
}

function whitelistEnabled() {
    return bool(uint8(stor10.field_176))
}

function sub_84d94014(?) {
    return sub_84d94014
}

function contractBalance() {
    return contractBalance
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function isPaused() {
    return bool(uint8(stor10.field_160))
}

function sub_ba27f50b(?) {
    require calldata.size - 4 >= 32
    return sub_ba27f50b[arg1]
}

function tradeCount() {
    return tradeCount
}

function blacklistEnabled() {
    return bool(uint8(stor10.field_168))
}

function sub_f16dc884(?) {
    return sub_f16dc884
}

function whitelistCount() {
    return whitelistCount
}

function sub_f8db0ee6(?) {
    return sub_f8db0ee6
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor9 = arg1
}

function sub_000fe223(?) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    sub_ba27f50b[address(arg1)] = arg2
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    address(stor10.field_0) = arg1
}

function sub_2aea52ab(?) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(88, 0, stor10.field_168) = Mask(88, 0, arg1)
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function addToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor11[address(arg1)] = 1
    sub_188d1644++
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor12[address(arg1)] = 1
    whitelistCount++
}

function enableWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(80, 0, stor10.field_176) = Mask(80, 0, arg1)
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor11[address(arg1)] = 0
    sub_188d1644--
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor12[address(arg1)] = 0
    whitelistCount--
}

function sub_38830999(?) {
    require calldata.size - 4 >= 64
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    if arg2 <= 0:
        revert with 0, 'Price cannot be zero.'
    sub_ba27f50b[address(arg1)] = arg2
}

function sub_2963cb61(?) payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    call stor9 with:
       value contractBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    contractBalance = 0
}

function sub_fb7b46b2(?) {
    require calldata.size - 4 >= 64
    stor0 = arg1
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getTokenPrice(address arg1) {
    require calldata.size - 4 >= 32
    stor0 = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f16dc884 = ext_call.return_data[0]
    return sub_f16dc884
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    stor0 = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f8db0ee6 = ext_call.return_data[0]
    return sub_f8db0ee6
}

function setMinBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe4d696e696d756d20636f6e747261637420424e42206d7573742062652067726561746572207468616e207a65726f,
                    mem[211 len 17]
    sub_517311ea = arg1
}

function sub_5ead259b(?) {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x73466565206d7573742062652067726561746572207468616e207a65726f2c206465782072657175697265732067617320746f206f706572617465,
                    mem[223 len 5]
    sub_84d94014 = arg1
}

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner.'
    stor0 = arg1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens to retrieve'
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor10.field_160):
        revert with 0, 'Trading has been paused.'
    if uint8(stor10.field_168):
        if stor11[address(msg.sender)]:
            revert with 0, 'Address is blacklisted.'
    if uint8(stor10.field_176):
        if not stor12[address(msg.sender)]:
            revert with 0, 'Address is not whitelisted.'
    stor0 = arg1
    require sub_84d94014
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (msg.value * sub_ba27f50b[address(arg1)]) - (msg.value / sub_84d94014 * sub_ba27f50b[address(arg1)]) <= 0:
        revert with 0, 'You need to send some ether'
    if (msg.value * sub_ba27f50b[address(arg1)]) - (msg.value / sub_84d94014 * sub_ba27f50b[address(arg1)]) > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens in the reserve'
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (msg.value * sub_ba27f50b[address(arg1)]) - (msg.value / sub_84d94014 * sub_ba27f50b[address(arg1)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor10.field_0), msg.value / sub_84d94014
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Bought(((msg.value * sub_ba27f50b[address(arg1)]) - (msg.value / sub_84d94014 * sub_ba27f50b[address(arg1)])));
    contractBalance += msg.value
    tradeCount++
}

function sell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor10.field_160):
        revert with 0, 'Trading has been paused'
    if uint8(stor10.field_168):
        if stor11[address(msg.sender)]:
            revert with 0, 'Address is blacklisted.'
    if uint8(stor10.field_176):
        if not stor12[address(msg.sender)]:
            revert with 0, 'Address is not whitelisted.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e596f75206e65656420746f2073656c6c206174206c6561737420736f6d6520746f6b656e,
                    mem[201 len 27]
    stor0 = arg1
    require sub_ba27f50b[address(arg1)]
    require sub_84d94014
    require ext_code.size(stor0)
    staticcall stor0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Check the token allowance'
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value (arg2 / sub_ba27f50b[address(arg1)]) - (arg2 / sub_ba27f50b[address(arg1)] / sub_84d94014) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor10.field_0) with:
       value arg2 / sub_ba27f50b[address(arg1)] / sub_84d94014 wei
         gas 2300 * is_zero(value) wei
    emit Sold(arg2);
    contractBalance -= arg2 / sub_ba27f50b[address(arg1)]
    tradeCount++
}



}
