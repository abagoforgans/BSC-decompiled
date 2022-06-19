contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'INFINIMETA'

const decimals = 9

const symbol = 'INFMETA'


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
address stor10;
address _marketingWalletAddress;
address sub_13f76fd4Address;
uint256 totalSupply;
uint256 totalFees;
uint256 stor15;
uint256 stor16;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 sub_d4c70c8d;
uint256 sub_9e3a9409;
uint256 sub_7921199f;
uint256 _liquidityFeeSell;
uint256 _maxTxAmount;
uint256 sub_d8d89bc6;
address sub_eda0228fAddress;
uint8 stor26; offset 168
uint128 stor26; offset 168
address pancakePairAddress;
uint8 stor27; offset 160
uint128 stor27; offset 160
address stor27;
uint256 sub_260978d8;
uint256 stor29;

function _isExcludedFromMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function totalFees() {
    return totalFees
}

function sub_13f76fd4(?) {
    return sub_13f76fd4Address
}

function totalSupply() {
    return totalSupply
}

function sub_260978d8(?) {
    return sub_260978d8
}

function sub_2c505e90(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function _taxFee() {
    return _taxFee
}

function sub_42737bb1(?) {
    return bool(uint8(stor27.field_160))
}

function swapAndLiquifyEnabled() {
    return bool(uint8(stor26.field_168))
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _liquidityFeeSell() {
    return _liquidityFeeSell
}

function _liquidityFee() {
    return _liquidityFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7921199f(?) {
    return sub_7921199f
}

function _maxTxAmount() {
    return _maxTxAmount
}

function PancakePair() {
    return pancakePairAddress
}

function getOwner() {
    return owner
}

function sub_89dfe6fd(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function _marketingWallet() {
    return _marketingWalletAddress
}

function sub_9e3a9409(?) {
    return sub_9e3a9409
}

function _isExcludedFromAutoLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_d4c70c8d(?) {
    return sub_d4c70c8d
}

function sub_d8d89bc6(?) {
    return sub_d8d89bc6
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_eda0228f(?) {
    return sub_eda0228fAddress
}

function _fallback() payable {
    revert
}

function sub_e16dd183(?) {
    if block.timestamp > stor29:
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor29 - block.timestamp / 24 * 3600)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    _maxTxAmount = arg1
}

function sub_383c5900(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor15 = arg1
    stor16 = arg2
}

function setMinTokenBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_d8d89bc6 = arg1
}

function setPancakePair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pancakePairAddress = arg1
}

function sub_0fa7c869(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    _taxFee = arg1
    _liquidityFee = arg2
}

function setAntiWhaleThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_260978d8 = arg1
}

function setPancakeRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_eda0228fAddress = arg1
}

function sub_52d65858(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_d4c70c8d = arg1
    sub_9e3a9409 = arg2
}

function sub_9fe64094(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_7921199f = arg1
    _liquidityFeeSell = arg2
}

function setExcludedFromBuy(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor7[address(arg1)] = uint8(arg2)
}

function setExcludedFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
}

function setExcludedFromMaxTx(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor8[address(arg1)] = uint8(arg2)
}

function setAntiWhaleEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor27.field_160) = Mask(96, 0, arg1)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor6[address(arg1)] = uint8(arg2)
}

function setExcludedFromAutoLiquidity(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor5[address(arg1)] = uint8(arg2)
}

function setAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor10 = arg1
    _marketingWalletAddress = arg2
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(88, 0, stor26.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function ProlongLiquidityLock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0, 'invalid address'
    if arg1 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 + block.timestamp > stor29
    stor29 = arg1 + block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function TeamReleaseLiquidity() {
    if stor10 != msg.sender:
        revert with 0, 'invalid address'
    if block.timestamp < stor29:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(pancakePairAddress)
    staticcall pancakePairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pancakePairAddress)
    call pancakePairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor10, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_8302453e(?) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0, 'invalid address'
    if this.address == arg1:
        revert with 0, 'Is this token!'
    if address(stor27.field_0) == arg1:
        revert with 0, 'Is liquiditypair!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor10, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}



}
