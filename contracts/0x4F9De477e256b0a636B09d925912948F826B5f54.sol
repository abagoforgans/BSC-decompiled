contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 2

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 totalSupply;
uint256 totalBNBCollected;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 sub_3d7aa1ec;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 sub_e6844b3a;
uint256 totalFee;
uint256 feeDenominator;
uint256 fundraisingGoal;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
address stor22;
address routerAddress;
uint8 tradingOpen; offset 160
uint8 sub_f9017966; offset 168
uint8 sub_13c3f271; offset 176
uint128 stor24; offset 176
uint128 stor24; offset 168
uint128 stor24; offset 160
address pairAddress;
uint256 gasPriceLimit;
uint8 swapEnabled;
uint256 swapThreshold;
uint256 sub_43203679;
uint8 stor29;

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_13c3f271(?) {
    return bool(sub_13c3f271)
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function sub_3d7aa1ec(?) {
    return bool(sub_3d7aa1ec)
}

function sub_43203679(?) {
    return sub_43203679
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function totalBNBCollected() {
    return totalBNBCollected
}

function gasPriceLimit() {
    return gasPriceLimit
}

function fundraisingGoal() {
    return fundraisingGoal
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6844b3a(?) {
    return sub_e6844b3a
}

function router() {
    return routerAddress
}

function sub_f9017966(?) {
    return bool(sub_f9017966)
}

function deadBlocks() {
    return deadBlocks
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sellMultiplier() {
    return sellMultiplier
}

function tradingOpen() {
    return bool(tradingOpen)
}

function sub_3bd0f41d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    fundraisingGoal = arg1
}

function sub_a8e5e983(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxWalletToken = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function sub_34dfb54e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_3d7aa1ec = uint8(bool(arg1))
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_84a4c96e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(80, 0, stor24.field_176) = Mask(80, 0, bool(arg1))
}

function sub_f5df581b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(88, 0, stor24.field_168) = Mask(88, 0, bool(arg1))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if owner == arg1:
        revert with 0, 'Cant remove owner'
    stor1[address(arg1)] = 0
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    sub_43203679 = arg3
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= 75
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    gasPriceLimit = 10^9 * arg1
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 > 5:
        revert with 0, 'Fees cannot be more than 5%'
    sub_e6844b3a = arg1
    totalFee = arg1
    feeDenominator = arg2
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2e3d0cd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 != this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    routerAddress = arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args stor2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    allowance[this.address][address(arg1)] = -1
}

function sub_fa2e8bfe(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= swapThreshold
    require balanceOf[this.address] >= arg1
    stor29 = 1
    mem[128] = this.address
    mem[160] = stor2
    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[196] = swapThreshold
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args swapThreshold, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if totalBNBCollected > !eth.balance(this.address):
        revert with 0, 17
    if totalBNBCollected + eth.balance(this.address) < totalBNBCollected:
        revert with 0, 'SafeMath: addition overflow'
    totalBNBCollected += eth.balance(this.address)
    if not totalFee:
        revert with 0, 'SafeMath: division by zero', 0
    call stor22 with:
       value 0 / totalFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor29 = 0
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 501:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 500 addresses'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 9
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _41 = mem[64]
        mem[64] = mem[64] + 64
        mem[_41] = 20
        mem[_41 + 32] = 'Insufficient Balance' << 96
        mem[32] = 9
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _43 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _43 + 68] = mem[idx + _41 + 32]
                idx = idx + 32
                continue 
            mem[_43 + 88] = 0
            revert with memory
              from mem[64]
               len _43 + -mem[64] + 100
        if balanceOf[address(arg1)] < cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 9
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
