contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address stor3;
uint256 startTime;
uint8 stor5;
address walletAddress; offset 8
address stor6;
uint256 stor7;
uint256 priceInWei;
uint256 weiRaised;
uint256 sub_b323954f;

function priceInWei() {
    return priceInWei
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_b323954f(?) {
    return sub_b323954f
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = 1
}

function unpauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_04a81e76(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b323954f = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceInWei = arg1
}

function setBeginTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
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

function closeSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor5 = 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Sale is paused, try again later'
    require block.timestamp >= startTime
    require msg.value
    require arg1 != owner
    if msg.value and priceInWei > -1 / msg.value:
        revert with 'NH{q', 17
    if weiRaised and priceInWei > -1 / weiRaised:
        revert with 'NH{q', 17
    if weiRaised * priceInWei > (-1 * msg.value * priceInWei) - 1:
        revert with 'NH{q', 17
    if (weiRaised * priceInWei) + (msg.value * priceInWei) > sub_b323954f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Error: reverted because sale smart contract has not enough tokens to sell to you'
    if weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    weiRaised += msg.value
    if msg.value and stor7 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * stor7 / 10^6 / 100:
        revert with 'NH{q', 17
    call walletAddress with:
       value msg.value - (msg.value * stor7 / 10^6 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor6 with:
       value msg.value * stor7 / 10^6 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args stor3, msg.sender, msg.value * priceInWei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokenPurchase(msg.sender, msg.value, msg.value * priceInWei);
}



}
