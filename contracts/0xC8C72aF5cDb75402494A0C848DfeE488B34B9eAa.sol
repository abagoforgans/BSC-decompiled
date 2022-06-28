contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 9

const VERSION = 1


address stor0;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor3;
uint256 totalSupply;
address rewardTokenAddress;
address routerAddress;
address pairAddress;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor10; offset 1
uint256 liquidityFee;
uint256 buybackFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 totalFee;
uint256 stor15; offset 2
uint256 feeDenominator;
uint256 sub_92258ec8;
uint256 sub_8ab6ffc7;
uint256 sub_921250d1;
uint256 sub_ecbf666f;
uint256 sub_19be947b;
uint256 sub_1023d5d4;
uint8 autoBuybackEnabled;
uint256 sub_591cf08d;
uint256 sub_6e78eb49;
uint256 sub_4896a632;
uint256 sub_5a53c1fb;
uint256 sub_b91854f4;
address distributorAddress;
uint256 sub_60e71962;
uint8 swapEnabled;
uint256 swapThreshold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor34;
mapping of uint8 stor35;
mapping of uint8 stor36;
uint8 stor37;

function swapThreshold() {
    return swapThreshold
}

function sub_1023d5d4(?) {
    return sub_1023d5d4
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function sub_19be947b(?) {
    return sub_19be947b
}

function totalFee() {
    return totalFee
}

function buybackFee() {
    return buybackFee
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor35[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[arg1])
}

function sub_4896a632(?) {
    return sub_4896a632
}

function sub_591cf08d(?) {
    return sub_591cf08d
}

function sub_5a53c1fb(?) {
    return sub_5a53c1fb
}

function sub_60e71962(?) {
    return sub_60e71962
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_6e78eb49(?) {
    return sub_6e78eb49
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function reflectionFee() {
    return reflectionFee
}

function sub_8ab6ffc7(?) {
    return sub_8ab6ffc7
}

function sub_921250d1(?) {
    return sub_921250d1
}

function sub_92258ec8(?) {
    return sub_92258ec8
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_b91854f4(?) {
    return sub_b91854f4
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ecbf666f(?) {
    return sub_ecbf666f
}

function sub_eff0dc22(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor34[arg1])
}

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_19be947b = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[57005] - balanceOf[0])
}

function sub_17d43583(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor34[address(arg1)] = uint8(bool(arg2))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor35[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_92258ec8 = arg1
    sub_8ab6ffc7 = arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 >= 750000:
        revert with 0, 'Gas must be lower than 750000'
    sub_60e71962 = arg1
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 'NH{q', 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    sub_921250d1 = arg1
    sub_ecbf666f = arg2
    sub_1023d5d4 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    sub_591cf08d = arg2
    sub_6e78eb49 = 0
    sub_4896a632 = arg3
    sub_5a53c1fb = arg4
    sub_b91854f4 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor7] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[57005] - balanceOf[0]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor7] / totalSupply - balanceOf[57005] - balanceOf[0])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor7] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[57005] - balanceOf[0]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor7] / totalSupply - balanceOf[57005] - balanceOf[0] > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor36[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    buybackFee = arg2
    reflectionFee = arg3
    marketingFee = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    totalFee = arg1 + arg2 + arg3 + arg4
    feeDenominator = arg5
    if totalFee >= stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Total fee should not be greater than 1/4 of fee denominator'
}

function getMultipliedFee() {
    if sub_19be947b > -sub_1023d5d4 - 1:
        revert with 'NH{q', 17
    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
        return totalFee
    if sub_19be947b > -sub_1023d5d4 - 1:
        revert with 'NH{q', 17
    if sub_19be947b + sub_1023d5d4 < block.timestamp:
        revert with 'NH{q', 17
    if totalFee and sub_921250d1 > -1 / totalFee:
        revert with 'NH{q', 17
    if not sub_ecbf666f:
        revert with 'NH{q', 18
    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
        revert with 'NH{q', 17
    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
        revert with 'NH{q', 17
    if not sub_1023d5d4:
        revert with 'NH{q', 18
    if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
        revert with 'NH{q', 17
    return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor37 = 1
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor37 = 0
    if arg2:
        sub_19be947b = block.timestamp
        emit BuybackMultiplierActive(sub_1023d5d4);
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return totalFee
    if sub_19be947b > -sub_1023d5d4 - 1:
        revert with 'NH{q', 17
    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
        return totalFee
    if sub_19be947b > -sub_1023d5d4 - 1:
        revert with 'NH{q', 17
    if sub_19be947b + sub_1023d5d4 < block.timestamp:
        revert with 'NH{q', 17
    if totalFee and sub_921250d1 > -1 / totalFee:
        revert with 'NH{q', 17
    if not sub_ecbf666f:
        revert with 'NH{q', 18
    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
        revert with 'NH{q', 17
    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
        revert with 'NH{q', 17
    if not sub_1023d5d4:
        revert with 'NH{q', 18
    if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
        revert with 'NH{q', 17
    return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor37:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == pairAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if stor35[address(msg.sender)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                require ext_code.size(distributorAddress)
                if not stor36[address(msg.sender)]:
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor36[address(arg1)]:
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call distributorAddress.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_60e71962
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 != pairAddress:
                    if arg2 and totalFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if not feeDenominator:
                        revert with 'NH{q', 18
                    if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                    if arg2 < arg2 * totalFee / feeDenominator:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                    require ext_code.size(distributorAddress)
                    if not stor36[address(msg.sender)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                else:
                    if sub_19be947b > -sub_1023d5d4 - 1:
                        revert with 'NH{q', 17
                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                        if arg2 and totalFee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not feeDenominator:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                        if arg2 < arg2 * totalFee / feeDenominator:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                    else:
                        if sub_19be947b > -sub_1023d5d4 - 1:
                            revert with 'NH{q', 17
                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                            revert with 'NH{q', 17
                        if totalFee and sub_921250d1 > -1 / totalFee:
                            revert with 'NH{q', 17
                        if not sub_ecbf666f:
                            revert with 'NH{q', 18
                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                            revert with 'NH{q', 17
                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                            revert with 'NH{q', 17
                        if not sub_1023d5d4:
                            revert with 'NH{q', 18
                        if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                            revert with 'NH{q', 17
                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                            revert with 'NH{q', 17
                        if not feeDenominator:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
        else:
            if stor37:
                if pairAddress != msg.sender:
                    if not stor37:
                        if autoBuybackEnabled:
                            if sub_b91854f4 > -sub_5a53c1fb - 1:
                                revert with 'NH{q', 17
                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                if eth.balance(this.address) >= sub_4896a632:
                                    stor37 = 1
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[128] = ext_call.return_data[12 len 20]
                                    mem[160] = this.address
                                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 356
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_4896a632 wei
                                         gas gas_remaining wei
                                        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor37 = 0
                                    sub_b91854f4 = block.number
                                    if sub_6e78eb49 > -sub_4896a632 - 1:
                                        revert with 'NH{q', 17
                                    sub_6e78eb49 += sub_4896a632
                                    if sub_6e78eb49 > sub_591cf08d:
                                        autoBuybackEnabled = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(msg.sender)] -= arg2
                if stor35[address(msg.sender)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(distributorAddress)
                    if not stor36[address(msg.sender)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 != pairAddress:
                        if arg2 and totalFee > -1 / arg2:
                            revert with 'NH{q', 17
                        if not feeDenominator:
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                        if arg2 < arg2 * totalFee / feeDenominator:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                    else:
                        if sub_19be947b > -sub_1023d5d4 - 1:
                            revert with 'NH{q', 17
                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                            if arg2 and totalFee > -1 / arg2:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                        else:
                            if sub_19be947b > -sub_1023d5d4 - 1:
                                revert with 'NH{q', 17
                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                revert with 'NH{q', 17
                            if totalFee and sub_921250d1 > -1 / totalFee:
                                revert with 'NH{q', 17
                            if not sub_ecbf666f:
                                revert with 'NH{q', 18
                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                revert with 'NH{q', 17
                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                revert with 'NH{q', 17
                            if not sub_1023d5d4:
                                revert with 'NH{q', 18
                            if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                revert with 'NH{q', 17
                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
            else:
                if not swapEnabled:
                    if pairAddress != msg.sender:
                        if not stor37:
                            if autoBuybackEnabled:
                                if sub_b91854f4 > -sub_5a53c1fb - 1:
                                    revert with 'NH{q', 17
                                if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                    if eth.balance(this.address) >= sub_4896a632:
                                        stor37 = 1
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[128] = ext_call.return_data[12 len 20]
                                        mem[160] = this.address
                                        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 0
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 356
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value sub_4896a632 wei
                                             gas gas_remaining wei
                                            args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor37 = 0
                                        sub_b91854f4 = block.number
                                        if sub_6e78eb49 > -sub_4896a632 - 1:
                                            revert with 'NH{q', 17
                                        sub_6e78eb49 += sub_4896a632
                                        if sub_6e78eb49 > sub_591cf08d:
                                            autoBuybackEnabled = 0
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(msg.sender)] -= arg2
                    if stor35[address(msg.sender)]:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != pairAddress:
                            if arg2 and totalFee > -1 / arg2:
                                revert with 'NH{q', 17
                            if not feeDenominator:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                        else:
                            if sub_19be947b > -sub_1023d5d4 - 1:
                                revert with 'NH{q', 17
                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not feeDenominator:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                            else:
                                if sub_19be947b > -sub_1023d5d4 - 1:
                                    revert with 'NH{q', 17
                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                    revert with 'NH{q', 17
                                if totalFee and sub_921250d1 > -1 / totalFee:
                                    revert with 'NH{q', 17
                                if not sub_ecbf666f:
                                    revert with 'NH{q', 18
                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                    revert with 'NH{q', 17
                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                    revert with 'NH{q', 17
                                if not sub_1023d5d4:
                                    revert with 'NH{q', 18
                                if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                    revert with 'NH{q', 17
                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not feeDenominator:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                else:
                    if balanceOf[address(this.address)] < swapThreshold:
                        if pairAddress != msg.sender:
                            if not stor37:
                                if autoBuybackEnabled:
                                    if sub_b91854f4 > -sub_5a53c1fb - 1:
                                        revert with 'NH{q', 17
                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                        if eth.balance(this.address) >= sub_4896a632:
                                            stor37 = 1
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[128] = ext_call.return_data[12 len 20]
                                            mem[160] = this.address
                                            mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 0
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 356
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_4896a632 wei
                                                 gas gas_remaining wei
                                                args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor37 = 0
                                            sub_b91854f4 = block.number
                                            if sub_6e78eb49 > -sub_4896a632 - 1:
                                                revert with 'NH{q', 17
                                            sub_6e78eb49 += sub_4896a632
                                            if sub_6e78eb49 > sub_591cf08d:
                                                autoBuybackEnabled = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        balanceOf[address(msg.sender)] -= arg2
                        if stor35[address(msg.sender)]:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != pairAddress:
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not feeDenominator:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                            else:
                                if sub_19be947b > -sub_1023d5d4 - 1:
                                    revert with 'NH{q', 17
                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not feeDenominator:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                else:
                                    if sub_19be947b > -sub_1023d5d4 - 1:
                                        revert with 'NH{q', 17
                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                        revert with 'NH{q', 17
                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                        revert with 'NH{q', 17
                                    if not sub_ecbf666f:
                                        revert with 'NH{q', 18
                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                        revert with 'NH{q', 17
                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                        revert with 'NH{q', 17
                                    if not sub_1023d5d4:
                                        revert with 'NH{q', 18
                                    if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not feeDenominator:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                    else:
                        stor37 = 1
                        if totalSupply < balanceOf[57005]:
                            revert with 'NH{q', 17
                        if totalSupply - balanceOf[57005] < balanceOf[0]:
                            revert with 'NH{q', 17
                        mem[0] = pairAddress
                        mem[32] = 32
                        if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                            revert with 'NH{q', 17
                        if sub_8ab6ffc7 and 2 * balanceOf[stor7] > -1 / sub_8ab6ffc7:
                            revert with 'NH{q', 17
                        if not totalSupply - balanceOf[57005] - balanceOf[0]:
                            revert with 'NH{q', 18
                        if sub_8ab6ffc7 * 2 * balanceOf[stor7] / totalSupply - balanceOf[57005] - balanceOf[0] > sub_92258ec8:
                            if swapThreshold and 0 > -1 / swapThreshold:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if swapThreshold < 0 / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = swapThreshold - (0 / totalFee / 2)
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < 0:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(distributorAddress)
                            call distributorAddress.deposit() with:
                               value 0 / totalFee wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalFee / 2 <= 0:
                                stor37 = 0
                                if msg.sender == pairAddress:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor35[address(msg.sender)]:
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != pairAddress:
                                            if arg2 and totalFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not feeDenominator:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_19be947b > -sub_1023d5d4 - 1:
                                                revert with 'NH{q', 17
                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if not feeDenominator:
                                                    revert with 'NH{q', 18
                                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > -sub_1023d5d4 - 1:
                                                    revert with 'NH{q', 17
                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                    revert with 'NH{q', 17
                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                    revert with 'NH{q', 17
                                                if not sub_ecbf666f:
                                                    revert with 'NH{q', 18
                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                    revert with 'NH{q', 17
                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                    revert with 'NH{q', 17
                                                if not sub_1023d5d4:
                                                    revert with 'NH{q', 18
                                                if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                    revert with 'NH{q', 17
                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if not feeDenominator:
                                                    revert with 'NH{q', 18
                                                if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                else:
                                    if stor37:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor35[address(msg.sender)]:
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 != pairAddress:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if not feeDenominator:
                                                    revert with 'NH{q', 18
                                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > -sub_1023d5d4 - 1:
                                                    revert with 'NH{q', 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not feeDenominator:
                                                        revert with 'NH{q', 18
                                                    if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > -sub_1023d5d4 - 1:
                                                        revert with 'NH{q', 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 'NH{q', 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 'NH{q', 17
                                                    if not sub_ecbf666f:
                                                        revert with 'NH{q', 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 'NH{q', 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 'NH{q', 17
                                                    if not sub_1023d5d4:
                                                        revert with 'NH{q', 18
                                                    if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                        revert with 'NH{q', 17
                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not feeDenominator:
                                                        revert with 'NH{q', 18
                                                    if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if not autoBuybackEnabled:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if stor35[address(msg.sender)]:
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg1 != pairAddress:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not feeDenominator:
                                                        revert with 'NH{q', 18
                                                    if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > -sub_1023d5d4 - 1:
                                                        revert with 'NH{q', 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not feeDenominator:
                                                            revert with 'NH{q', 18
                                                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > -sub_1023d5d4 - 1:
                                                            revert with 'NH{q', 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 'NH{q', 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 'NH{q', 17
                                                        if not sub_ecbf666f:
                                                            revert with 'NH{q', 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 'NH{q', 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 'NH{q', 17
                                                        if not sub_1023d5d4:
                                                            revert with 'NH{q', 18
                                                        if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                            revert with 'NH{q', 17
                                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not feeDenominator:
                                                            revert with 'NH{q', 18
                                                        if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_b91854f4 > -sub_5a53c1fb - 1:
                                                revert with 'NH{q', 17
                                            if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if stor35[address(msg.sender)]:
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg1 != pairAddress:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not feeDenominator:
                                                            revert with 'NH{q', 18
                                                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > -sub_1023d5d4 - 1:
                                                            revert with 'NH{q', 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not feeDenominator:
                                                                revert with 'NH{q', 18
                                                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > -sub_1023d5d4 - 1:
                                                                revert with 'NH{q', 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 'NH{q', 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 'NH{q', 17
                                                            if not sub_ecbf666f:
                                                                revert with 'NH{q', 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 'NH{q', 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 'NH{q', 17
                                                            if not sub_1023d5d4:
                                                                revert with 'NH{q', 18
                                                            if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not feeDenominator:
                                                                revert with 'NH{q', 18
                                                            if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < sub_4896a632:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg1 != pairAddress:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not feeDenominator:
                                                                revert with 'NH{q', 18
                                                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > -sub_1023d5d4 - 1:
                                                                revert with 'NH{q', 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 'NH{q', 17
                                                                if not feeDenominator:
                                                                    revert with 'NH{q', 18
                                                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 'NH{q', 17
                                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > -sub_1023d5d4 - 1:
                                                                    revert with 'NH{q', 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 'NH{q', 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 'NH{q', 17
                                                                if not sub_ecbf666f:
                                                                    revert with 'NH{q', 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 'NH{q', 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 'NH{q', 17
                                                                if not sub_1023d5d4:
                                                                    revert with 'NH{q', 18
                                                                if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                                    revert with 'NH{q', 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 'NH{q', 17
                                                                if not feeDenominator:
                                                                    revert with 'NH{q', 18
                                                                if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 'NH{q', 17
                                                                if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 256] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(2 * ceil32(return_data.size)) + 420] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 224
                                                    t = (2 * ceil32(return_data.size)) + 452
                                                    while idx < mem[ceil32(return_data.size) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > -sub_4896a632 - 1:
                                                        revert with 'NH{q', 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_6e78eb49 > sub_591cf08d:
                                                        autoBuybackEnabled = 0
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(2 * ceil32(return_data.size)) + 356] = 32
                                                        mem[(2 * ceil32(return_data.size)) + 388] = 20
                                                        mem[(2 * ceil32(return_data.size)) + 420] = 'Insufficient Balance'
                                                        mem[(2 * ceil32(return_data.size)) + 440] = 0
                                                        revert with memory
                                                          from (2 * ceil32(return_data.size)) + 352
                                                           len ceil32(return_data.size) + 100
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)] += arg2
                                                        if not stor36[address(msg.sender)]:
                                                            mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                        if not stor36[address(arg1)]:
                                                            mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                            mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                        require ext_code.size(distributorAddress)
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg1 != pairAddress:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if not feeDenominator:
                                                                revert with 'NH{q', 18
                                                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            if not stor36[address(msg.sender)]:
                                                                mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                            if not stor36[address(arg1)]:
                                                                mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > -sub_1023d5d4 - 1:
                                                                revert with 'NH{q', 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 'NH{q', 17
                                                                if not feeDenominator:
                                                                    revert with 'NH{q', 18
                                                                if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 'NH{q', 17
                                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > -sub_1023d5d4 - 1:
                                                                    revert with 'NH{q', 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 'NH{q', 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 'NH{q', 17
                                                                if not sub_ecbf666f:
                                                                    revert with 'NH{q', 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 'NH{q', 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 'NH{q', 17
                                                                if not sub_1023d5d4:
                                                                    revert with 'NH{q', 18
                                                                if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                                    revert with 'NH{q', 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 'NH{q', 17
                                                                if not feeDenominator:
                                                                    revert with 'NH{q', 18
                                                                if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 'NH{q', 17
                                                                if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                                    revert with 'NH{q', 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 260] = 0
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = autoLiquidityReceiverAddress
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0 / totalFee / 2
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                                stor37 = 0
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > -sub_5a53c1fb - 1:
                                                revert with 'NH{q', 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (4 * ceil32(return_data.size)) + 288
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0 >= 0 / totalFee / 2:
                                                        revert with 'NH{q', 50
                                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if 1 >= 0 / totalFee / 2:
                                                        revert with 'NH{q', 50
                                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                                    mem[(4 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(4 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 0 / totalFee / 2
                                                    idx = 0
                                                    s = (2 * ceil32(return_data.size)) + 224
                                                    t = (4 * ceil32(return_data.size)) + 452
                                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 448]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > -sub_4896a632 - 1:
                                                        revert with 'NH{q', 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_6e78eb49 > sub_591cf08d:
                                                        autoBuybackEnabled = 0
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                balanceOf[address(msg.sender)] -= arg2
                                if stor35[address(msg.sender)]:
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != pairAddress:
                                        if arg2 and totalFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not feeDenominator:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                        if arg2 < arg2 * totalFee / feeDenominator:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if sub_19be947b > -sub_1023d5d4 - 1:
                                            revert with 'NH{q', 17
                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                            if arg2 and totalFee > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not feeDenominator:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_19be947b > -sub_1023d5d4 - 1:
                                                revert with 'NH{q', 17
                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                revert with 'NH{q', 17
                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                revert with 'NH{q', 17
                                            if not sub_ecbf666f:
                                                revert with 'NH{q', 18
                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                revert with 'NH{q', 17
                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                revert with 'NH{q', 17
                                            if not sub_1023d5d4:
                                                revert with 'NH{q', 18
                                            if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                                revert with 'NH{q', 17
                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not feeDenominator:
                                                revert with 'NH{q', 18
                                            if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                        else:
                            if swapThreshold and liquidityFee > -1 / swapThreshold:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < stor10:
                                revert with 'NH{q', 17
                            if False and liquidityFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - stor10:
                                revert with 'NH{q', 18
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - stor10:
                                revert with 'NH{q', 18
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - stor10:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(distributorAddress)
                            call distributorAddress.deposit() with:
                               value 0 / totalFee - stor10 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - stor10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if swapThreshold * liquidityFee / totalFee / 2 <= 0:
                                stor37 = 0
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > -sub_5a53c1fb - 1:
                                                revert with 'NH{q', 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 256] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(2 * ceil32(return_data.size)) + 420] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 224
                                                    t = (2 * ceil32(return_data.size)) + 452
                                                    while idx < mem[ceil32(return_data.size) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 448]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > -sub_4896a632 - 1:
                                                        revert with 'NH{q', 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_6e78eb49 > sub_591cf08d:
                                                        autoBuybackEnabled = 0
                            else:
                                mem[ceil32(return_data.size) + 260] = 0
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = autoLiquidityReceiverAddress
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - stor10 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 192] = 0 / totalFee - stor10 / 2
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor10), swapThreshold * liquidityFee / totalFee / 2);
                                stor37 = 0
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > -sub_5a53c1fb - 1:
                                                revert with 'NH{q', 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = (4 * ceil32(return_data.size)) + 288
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0 >= 0 / totalFee - stor10 / 2:
                                                        revert with 'NH{q', 50
                                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if 1 >= 0 / totalFee - stor10 / 2:
                                                        revert with 'NH{q', 50
                                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                                    mem[(4 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(4 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 0 / totalFee - stor10 / 2
                                                    idx = 0
                                                    s = (2 * ceil32(return_data.size)) + 224
                                                    t = (4 * ceil32(return_data.size)) + 452
                                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 448]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > -sub_4896a632 - 1:
                                                        revert with 'NH{q', 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_6e78eb49 > sub_591cf08d:
                                                        autoBuybackEnabled = 0
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            balanceOf[address(msg.sender)] -= arg2
                            if stor35[address(msg.sender)]:
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 != pairAddress:
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not feeDenominator:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                else:
                                    if sub_19be947b > -sub_1023d5d4 - 1:
                                        revert with 'NH{q', 17
                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                        if arg2 and totalFee > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not feeDenominator:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                        if arg2 < arg2 * totalFee / feeDenominator:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if sub_19be947b > -sub_1023d5d4 - 1:
                                            revert with 'NH{q', 17
                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                            revert with 'NH{q', 17
                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                            revert with 'NH{q', 17
                                        if not sub_ecbf666f:
                                            revert with 'NH{q', 18
                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                            revert with 'NH{q', 17
                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                            revert with 'NH{q', 17
                                        if not sub_1023d5d4:
                                            revert with 'NH{q', 18
                                        if totalFee > -((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not feeDenominator:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(this.address)] > -((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] > -arg2 + ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
    return 1
}



}
