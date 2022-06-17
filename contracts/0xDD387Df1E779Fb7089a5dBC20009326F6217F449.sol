contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 18

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address autoLiquidityReceiverAddress;
address marketingWalletAddress;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _walletMax;
uint8 restrictWhales;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_dcafac09;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint8 blacklistMode;
mapping of uint8 stor21;
uint256 deadBlocks;
uint256 sub_e5ec7451;
uint256 sub_d9fa7f1a;
uint256 sub_d55540c1;
uint256 sub_b7c9e5f1;
uint256 sub_940c6046;
uint256 sub_1af85a9d;
uint256 sub_04b332e7;
uint256 sub_e62b05e0;
uint256 sub_f25de2d4;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingOpen;
address dividendDistributorAddress; offset 8
uint256 stor36;
uint8 swapAndLiquifyEnabled; offset 8
uint8 swapAndLiquifyByLimitOnly; offset 16
uint256 stor37; offset 24
uint256 stor37; offset 16
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function sub_04b332e7(?) {
    return sub_04b332e7
}

function totalSupply() {
    return totalSupply
}

function sub_1af85a9d(?) {
    return sub_1af85a9d
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function restrictWhales() {
    return bool(restrictWhales)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _walletMax() {
    return _walletMax
}

function getOwner() {
    return owner
}

function blacklistMode() {
    return bool(blacklistMode)
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function sub_940c6046(?) {
    return sub_940c6046
}

function sub_96632528(?) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function pair() {
    return pairAddress
}

function sub_b7c9e5f1(?) {
    return sub_b7c9e5f1
}

function dividendDistributor() {
    return dividendDistributorAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_d55540c1(?) {
    return sub_d55540c1
}

function sub_d9fa7f1a(?) {
    return sub_d9fa7f1a
}

function swapAndLiquifyByLimitOnly() {
    return bool(swapAndLiquifyByLimitOnly)
}

function sub_dcafac09(?) {
    return sub_dcafac09
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e5ec7451(?) {
    return sub_e5ec7451
}

function sub_e62b05e0(?) {
    return sub_e62b05e0
}

function sub_f25de2d4(?) {
    return sub_f25de2d4
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function changeWalletLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _walletMax = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_5fac69f6(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_f25de2d4 = arg1
}

function enable_blacklist(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    blacklistMode = uint8(arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_398ac310(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor19[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function changeDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor36 = arg1
}

function changeIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function changeFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingWalletAddress = arg2
}

function sub_84f41961(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
    if uint8(arg1):
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
    sub_dcafac09 = arg3
}

function claimDividend() {
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function changeSwapBackSettings(bool arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapThreshold = arg2
    swapAndLiquifyEnabled = uint8(arg1)
    Mask(240, 0, stor37.field_16) = Mask(240, 0, arg3)
    Mask(232, 0, stor37.field_24) = 0
    Mask(232, 0, stor37.field_24) = Mask(232, 16, arg1) >> 16
}

function changeDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3e16c22b(?) {
    require calldata.size - 4 >= 32
    if not sub_f25de2d4:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0xf70a11ef1f69758e7d6ed64d22be2ae462f29ea1)
    staticcall 0xf70a11ef1f69758e7d6ed64d22be2ae462f29ea1.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= 100000000000 * 10^18 / sub_f25de2d4
}

function manage_blacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 21
        stor21[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function changeFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_e5ec7451 = arg1
    sub_d9fa7f1a = arg2
    sub_b7c9e5f1 = arg3
    sub_d55540c1 = arg4
    if arg4 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_940c6046 = arg3 + arg4 + arg1
    if sub_d9fa7f1a + sub_e5ec7451 < sub_e5ec7451:
        revert with 0, 'SafeMath: addition overflow'
    if sub_b7c9e5f1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_04b332e7 = sub_b7c9e5f1 + sub_d9fa7f1a + sub_e5ec7451
    sub_1af85a9d = 3 * sub_940c6046
    sub_e62b05e0 = 3 * sub_940c6046
}

function changeIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor18[address(arg1)] = uint8(arg2)
    require ext_code.size(dividendDistributorAddress)
    if not arg2:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fde21ddb(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not balanceOf[msg.sender]:
        if 0 > balanceOf[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 12
            balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = 0
            mem[224] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[228] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[260] = 0
            require ext_code.size(dividendDistributorAddress)
            call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if cd[36] * balanceOf[msg.sender] / balanceOf[msg.sender] != cd[36]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not cd[36] * balanceOf[msg.sender] / 1000:
            if 0 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ('cd', 4).length * cd[36] * balanceOf[msg.sender] / 1000 / cd[36] * balanceOf[msg.sender] / 1000 != ('cd', 4).length:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ('cd', 4).length * cd[36] * balanceOf[msg.sender] / 1000 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] += -1 * ('cd', 4).length * cd[36] * balanceOf[msg.sender] / 1000
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 12
            balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = cd[36] * balanceOf[msg.sender] / 1000
            mem[224] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[228] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[260] = cd[36] * balanceOf[msg.sender] / 1000
            require ext_code.size(dividendDistributorAddress)
            call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[36] * balanceOf[msg.sender] / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    mem[256 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 256] = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 268 len 20]
        mem[32] = 21
        stor21[mem[(32 * idx) + 268 len 20]] = 1
        idx = idx + 1
        continue 
}



}
