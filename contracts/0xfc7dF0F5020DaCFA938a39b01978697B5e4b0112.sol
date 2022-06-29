contract main {




// =====================  Runtime code  =====================


#
#  - ExchangeBNBforTokenMannual(address arg1)
#  - _fallback()
#
const bnbBalance = eth.balance(this.address)


address _owner;
uint256 stor1;
mapping of uint256 rewardEarned;
array of uint256 stor2;
address tokenAddr;
uint256 sub_0ab91033;
uint256 sub_49bb330f;
mapping of struct users;
uint8 stor7;
mapping of uint256 balances;
mapping of uint256 tokenExchanged;

function sub_0ab91033(?) {
    return sub_0ab91033
}

function rewardEarned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardEarned[arg1]
}

function reward() {
    return bool(stor7)
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function tokenExchanged(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenExchanged[arg1]
}

function sub_49bb330f(?) {
    return sub_49bb330f
}

function tokenAddr() {
    return tokenAddr
}

function owner() {
    return _owner
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280
}

function _owner() {
    return _owner
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    return ref_bonuses[uint8(arg1)]
}

function updatePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_49bb330f = arg1
}

function updateTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0ab91033 = arg1
}

function sub_dde7565b(?) {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7:
        stor7 = 1
    else:
        stor7 = 0
    return 1
}

function updateTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddr = arg1
}

function tokenBalance() {
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function withdrawCrypto(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor1 = 1
}



}
