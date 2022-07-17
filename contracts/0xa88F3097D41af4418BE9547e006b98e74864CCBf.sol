contract main {




// =====================  Runtime code  =====================


address _owner;
uint128 stor1; offset 160
address _creatorAddress;
uint256 balance;
uint256 maxPercent;
uint256 sub_d34e0db8;
address sub_5c1aac34Address;
uint256 sub_de20308a;
address marketingWalletAddress;
uint256 sub_15412df9;
address sub_b53d4567Address;

function getBalance() {
    return balance
}

function sub_15412df9(?) {
    return sub_15412df9
}

function maxPercent() {
    return maxPercent
}

function sub_5c1aac34(?) {
    return sub_5c1aac34Address
}

function marketingWallet() {
    return marketingWalletAddress
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function sub_b53d4567(?) {
    return sub_b53d4567Address
}

function balance() {
    return balance
}

function _creator() {
    return _creatorAddress
}

function sub_d34e0db8(?) {
    return sub_d34e0db8
}

function sub_de20308a(?) {
    return sub_de20308a
}

function kill() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(_owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = 0
    emit OwnershipTransferred(_owner, 0);
}

function sub_33fb2208(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d34e0db8 = arg1
    sub_5c1aac34Address = address(arg2)
}

function sub_a75523e3(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_15412df9 = arg1
    sub_b53d4567Address = address(arg2)
}

function sub_ead0ffd4(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_de20308a = arg1
    marketingWalletAddress = address(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    _owner = arg1
    emit OwnershipTransferred(_owner, arg1);
}

function distribute() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = 1
    if sub_d34e0db8 > -sub_de20308a - 1:
        revert with 'NH{q', 17
    if sub_d34e0db8 + sub_de20308a > -sub_15412df9 - 1:
        revert with 'NH{q', 17
    if sub_d34e0db8 + sub_de20308a + sub_15412df9 != maxPercent:
        revert with 0, 'The sum of percentage isn't 100.'
    if not sub_5c1aac34Address:
        revert with 0, 'Cannot send to zero wallet.'
    if not marketingWalletAddress:
        revert with 0, 'Cannot send to zero wallet.'
    if not sub_b53d4567Address:
        revert with 0, 'Cannot send to zero wallet.'
    if balance and sub_d34e0db8 > -1 / balance:
        revert with 'NH{q', 17
    if not maxPercent:
        revert with 'NH{q', 18
    call sub_5c1aac34Address with:
       value balance * sub_d34e0db8 / maxPercent wei
         gas 30000 wei
    if not ext_call.success:
        revert with 0, 'Transfer wallet_1 error.'
    balance = eth.balance(this.address)
    if balance and sub_de20308a > -1 / balance:
        revert with 'NH{q', 17
    if not maxPercent:
        revert with 'NH{q', 18
    call marketingWalletAddress with:
       value balance * sub_de20308a / maxPercent wei
         gas 30000 wei
    if not ext_call.success:
        revert with 0, 'Transfer wallet_2 error.'
    balance = eth.balance(this.address)
    if balance and sub_15412df9 > -1 / balance:
        revert with 'NH{q', 17
    if not maxPercent:
        revert with 'NH{q', 18
    call sub_b53d4567Address with:
       value balance * sub_15412df9 / maxPercent wei
         gas 30000 wei
    if not ext_call.success:
        revert with 0, 'Transfer wallet_3 error.'
    balance = eth.balance(this.address)
    stor1 = 0
}



}
