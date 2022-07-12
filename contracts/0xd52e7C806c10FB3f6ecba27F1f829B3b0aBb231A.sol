contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'CryptoClans token', 0

const totalSupply = 1000000000 * 10^18

const decimals = 18

const burnAddress = 57005

const symbol = 'COC', 0


address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
address sub_8812f374Address;
address sub_cf6037e9Address;
uint256 sub_df106861;
uint256 _buyGameFee;
uint256 _liquidityBuyFee;
uint256 sub_16f2f1a8;
uint256 sub_4a51794c;
uint256 _sellGameFee;
uint256 _liquiditySellFee;
uint256 sub_7abdc1ca;
address pancakeswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 presaleEnded; offset 176
uint128 stor25; offset 176
uint128 stor25; offset 168
address pancakeswapV2PairAddress;
uint256 _maxTxAmount;
uint256 stor27;
uint256 sub_db879c3d;

function sub_16f2f1a8(?) {
    return sub_16f2f1a8
}

function _buyGameFee() {
    return _buyGameFee
}

function sub_4a51794c(?) {
    return sub_4a51794c
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function pancakeswapV2Pair() {
    return pancakeswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _sellGameFee() {
    return _sellGameFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7abdc1ca(?) {
    return sub_7abdc1ca
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_8812f374(?) {
    return sub_8812f374Address
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function sub_cf6037e9(?) {
    return sub_cf6037e9Address
}

function _liquiditySellFee() {
    return _liquiditySellFee
}

function sub_db879c3d(?) {
    return sub_db879c3d
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_df106861(?) {
    return sub_df106861
}

function _liquidityBuyFee() {
    return _liquidityBuyFee
}

function presaleEnded() {
    return bool(presaleEnded)
}

function pancakeswapV2Router() {
    return pancakeswapV2RouterAddress
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

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
    emit 0x9f5e246a: arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
    emit IncludedToFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
    emit ExcludedFromFee(arg1);
}

function setCoolDownTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require sub_db879c3d != arg1
    sub_db879c3d = arg1
    emit 0xa1549e44: arg1
}

function sub_0888d692(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor25.field_176) = Mask(80, 0, bool(arg1))
    emit 0xb2114008: bool(arg1)
}

function setNumTokensToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor27 != arg1
    stor27 = arg1
    emit UpdateNumtokensToSwap(arg1);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor25.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 0 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function setGamePoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_cf6037e9Address:
        revert with 0, 'This address was already used'
    sub_cf6037e9Address = arg1
    emit 0xa4217d4b: arg1
}

function sub_c72425ff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1) == sub_8812f374Address:
        revert with 0, 'This address was already used'
    sub_8812f374Address = address(arg1)
    emit 0x382f7e63: address(arg1)
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_df106861 == arg1:
        if _liquidityBuyFee == arg2:
            if sub_16f2f1a8 == arg3:
                require _sellGameFee != arg4
    sub_df106861 = arg1
    _liquidityBuyFee = arg2
    sub_16f2f1a8 = arg3
    _buyGameFee = arg4
    emit 0xff09db43: arg1, arg2, arg3, arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_4a51794c == arg1:
        if _liquiditySellFee == arg2:
            if sub_7abdc1ca == arg3:
                require _sellGameFee != arg4
    sub_4a51794c = arg1
    _liquiditySellFee = arg2
    sub_7abdc1ca = arg3
    _sellGameFee = arg4
    emit 0xc70f1c62: arg1, arg2, arg3, arg4
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}



}
