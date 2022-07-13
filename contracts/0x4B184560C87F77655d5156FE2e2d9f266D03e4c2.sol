contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 purchasedAmount;
uint256 sub_3ea8f9ab;
uint256 sub_f092c589;
uint256 sub_7834f526;
uint256 sub_e7f475e9;
uint256 totalPurchasedAmount;
uint8 isInitialized;
address tokenAddress; offset 8

function walletWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function isInitialized() {
    return bool(isInitialized)
}

function sub_3ea8f9ab(?) {
    return sub_3ea8f9ab
}

function purchasedAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return purchasedAmount[arg1]
}

function sub_7834f526(?) {
    return sub_7834f526
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function totalPurchasedAmount() {
    return totalPurchasedAmount
}

function sub_e7f475e9(?) {
    return sub_e7f475e9
}

function sub_f092c589(?) {
    return sub_f092c589
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function emergencyTokenAddressUpdate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function whitelistWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function initialize() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if isInitialized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'May not initialize contract again'
    isInitialized = 1
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 3000 wei
    if not ext_call.success:
        revert with 0, 'Withdrawal was not successful'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdrawTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bf78c752(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function buyTokens() payable {
    if not isInitialized:
        revert with 0, 'Private sale not active'
    if not stor1[address(msg.sender)]:
        revert with 0, 'User is not whitelisted'
    if msg.value <= 0:
        revert with 0, 'Must send BNB to get tokens'
    if not sub_7834f526:
        revert with 'NH{q', 18
    if msg.value % sub_7834f526:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must buy in increments of Minimum BNB Amount'
    if msg.value > -purchasedAmount[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if msg.value + purchasedAmount[address(msg.sender)] > sub_f092c589:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot buy more than MaxBNB Amount'
    if msg.value > -totalPurchasedAmount - 1:
        revert with 'NH{q', 17
    if msg.value + totalPurchasedAmount > sub_e7f475e9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No more tokens available for presale'
    if purchasedAmount[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    purchasedAmount[address(msg.sender)] += msg.value
    if totalPurchasedAmount > -msg.value - 1:
        revert with 'NH{q', 17
    totalPurchasedAmount += msg.value
    if msg.value and sub_3ea8f9ab > -1 / msg.value:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < msg.value * sub_3ea8f9ab / 10^18:
        revert with 0, 'Not enough tokens on contract to send'
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value * sub_3ea8f9ab / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xbbf80c42: (msg.value * sub_3ea8f9ab / 10^18), msg.value, msg.sender
}



}
