contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_188d1644;
uint256 whitelistCount;
uint256 contractBalance;
uint256 sub_517311ea;
uint256 tokenPrice;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
uint128 stor6; offset 176
uint128 stor6; offset 168
uint128 stor6; offset 160
address stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;

function sub_188d1644(?) {
    return sub_188d1644
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function sub_517311ea(?) {
    return sub_517311ea
}

function whitelistEnabled() {
    return bool(uint8(stor6.field_176))
}

function tokenPrice() {
    return tokenPrice
}

function contractBalance() {
    return contractBalance
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function isPaused() {
    return bool(uint8(stor6.field_160))
}

function blacklistEnabled() {
    return bool(uint8(stor6.field_168))
}

function whitelistCount() {
    return whitelistCount
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_da03db6a(?) {
    require calldata.size - 4 >= 64
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor0 = arg1
    tokenPrice = arg2
}

function sub_2aea52ab(?) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(88, 0, stor6.field_168) = Mask(88, 0, arg1)
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function addToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor7[address(arg1)] = 1
    sub_188d1644++
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor8[address(arg1)] = 1
    whitelistCount++
}

function enableWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(80, 0, stor6.field_176) = Mask(80, 0, arg1)
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor7[address(arg1)] = 0
    sub_188d1644--
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor8[address(arg1)] = 0
    whitelistCount--
}

function setTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    if arg1 <= 0:
        revert with 0, 'Price cannot be zero.'
    tokenPrice = arg1
}

function getTokenBalance() {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_89d9cb2f(?) payable {
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
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
        args address(stor6.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(stor6.field_0) with:
       value contractBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    contractBalance = 0
}

function buy() payable {
    if uint8(stor6.field_160):
        revert with 0, 'Trading has been paused.'
    if uint8(stor6.field_168):
        if stor7[address(msg.sender)]:
            revert with 0, 'Address is blacklisted.'
    if uint8(stor6.field_176):
        if not stor8[address(msg.sender)]:
            revert with 0, 'Address is not whitelisted.'
    require tokenPrice
    if not msg.value / tokenPrice:
        if msg.value / tokenPrice >= msg.value:
            revert with 0, '0'
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        s = 0
        idx = msg.value / tokenPrice
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if s:
            mem[128 len s] = code.data[9947 len s]
        t = s
        idx = msg.value / tokenPrice
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if msg.value / tokenPrice >= msg.value:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not mem[96] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
            mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
            revert with 0, 32, mem[96], mem[mem[64] + 68 len floor32(mem[96]) + 32]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value / tokenPrice <= 0:
        revert with 0, 'You need to send some ether'
    if msg.value / tokenPrice > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens in the reserve'
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / tokenPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Bought((msg.value / tokenPrice));
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor6.field_160):
        revert with 0, 'Trading has been paused'
    if uint8(stor6.field_168):
        if stor7[address(msg.sender)]:
            revert with 0, 'Address is blacklisted.'
    if uint8(stor6.field_176):
        if not stor8[address(msg.sender)]:
            revert with 0, 'Address is not whitelisted.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe596f75206e65656420746f2073656c6c206174206c6561737420736f6d6520746f6b656e,
                    mem[201 len 27]
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Check the token allowance'
    if not arg1 * tokenPrice:
        if arg1 * tokenPrice >= arg1:
            revert with 0, '0'
    else:
        s = 0
        idx = arg1 * tokenPrice
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if s:
            mem[128 len s] = code.data[9947 len s]
        t = s
        idx = arg1 * tokenPrice
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if arg1 * tokenPrice >= arg1:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not mem[96] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
            mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
            revert with 0, 32, mem[96], mem[mem[64] + 68 len floor32(mem[96]) + 32]
    ('lt', ('mul', ('param', 'arg1'), ('stor', ('name', 'tokenPrice', 5))), ('param', 'arg1'))
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sold(arg1);
}



}
