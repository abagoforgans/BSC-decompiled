contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const name = 'FundMe', 0

const totalSupply = 1000000000000 * 10^18

const decimals = 18

const symbol = 'FM', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WBNBAddress;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint256 stor9; offset 1
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor16;
uint256 stor17;
address routerAddress;
address pairAddress;
address stor20;
address distributorAddress;
uint256 stor22;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor25;

function swapThreshold() {
    return swapThreshold
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
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
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor22 = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = 1000000000000 * 10^18
    emit Approval(1000000000000 * 10^18, msg.sender, arg1);
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor6[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7[address(arg1)] = uint8(arg2)
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 1000000000 * 10^18
    _maxTxAmount = arg1
    emit UpdateTxLimit(arg1);
}

function getCirculatingSupply() {
    if 1000000000000 * 10^18 < balanceOf[57005]:
        revert with 'NH{q', 17
    if -balanceOf[57005] + 1000000000000 * 10^18 < balanceOf[0]:
        revert with 'NH{q', 17
    return (-balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    emit 0x19df65e0: arg1, arg2
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

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    emit 0xdc78c15f: arg1, arg2
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor20)
    call stor20.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint256(stor9.field_0) = arg1
    stor10 = arg2
    stor11 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor12 = arg1 + arg2 + arg3
    stor13 = arg4
    require stor12 < stor13 / 5
    emit UpdateFees(arg1, arg2, arg3, arg4);
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1000000000000 * 10^18 < balanceOf[57005]:
        revert with 'NH{q', 17
    if -balanceOf[57005] + 1000000000000 * 10^18 < balanceOf[0]:
        revert with 'NH{q', 17
    if balanceOf[stor19] and 2 > -1 / balanceOf[stor19]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor19] > -1 / arg1:
        revert with 'NH{q', 17
    if not -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor19] / -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 1000000000000 * 10^18 < balanceOf[57005]:
        revert with 'NH{q', 17
    if -balanceOf[57005] + 1000000000000 * 10^18 < balanceOf[0]:
        revert with 'NH{q', 17
    if balanceOf[stor19] and 2 > -1 / balanceOf[stor19]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor19] > -1 / arg2:
        revert with 'NH{q', 17
    if not -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor19] / -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18 > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor8[address(arg1)] = uint8(arg2)
    require ext_code.size(stor20)
    if not arg2:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor20.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] == 1000000000000 * 10^18:
        if stor25:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
        else:
            if arg3 > _maxTxAmount:
                if not stor7[address(arg1)]:
                    revert with 0, 'TX Limit Exceeded'
            if pairAddress != msg.sender:
                if not stor25:
                    if swapEnabled:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            stor25 = 1
                            if 1000000000000 * 10^18 < balanceOf[57005]:
                                revert with 'NH{q', 17
                            if -balanceOf[57005] + 1000000000000 * 10^18 < balanceOf[0]:
                                revert with 'NH{q', 17
                            if balanceOf[stor19] and 2 > -1 / balanceOf[stor19]:
                                revert with 'NH{q', 17
                            if stor17 and 2 * balanceOf[stor19] > -1 / stor17:
                                revert with 'NH{q', 17
                            if not -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18:
                                revert with 'NH{q', 18
                            if stor17 * 2 * balanceOf[stor19] / -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18 > stor16:
                                if swapThreshold and 0 > -1 / swapThreshold:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if swapThreshold < 0 / stor12 / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WBNBAddress
                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[196] = swapThreshold - (0 / stor12 / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (0 / stor12 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if False and stor10 > 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if False and stor11 > 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor20)
                                call stor20.0xd0e30db0 with:
                                   value 0 / stor12 wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / stor12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / stor12 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor12 / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, 0 / stor12), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(Mask(255, 1, 0 / stor12), 0 / stor12 / 2);
                            else:
                                if swapThreshold and uint256(stor9.field_0) > -1 / swapThreshold:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if swapThreshold < swapThreshold * uint256(stor9.field_0) / stor12 / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WBNBAddress
                                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[196] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor12 / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor12 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor12 < uint255(stor9.field_1):
                                    revert with 'NH{q', 17
                                if False and uint256(stor9.field_0) > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                if False and stor10 > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                if False and stor11 > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                require ext_code.size(stor20)
                                call stor20.0xd0e30db0 with:
                                   value 0 / stor12 - uint255(stor9.field_1) wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / stor12 - uint255(stor9.field_1) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if swapThreshold * uint256(stor9.field_0) / stor12 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor12 - uint255(stor9.field_1) / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, swapThreshold * uint256(stor9.field_0) / stor12), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(Mask(255, 1, 0 / stor12 - uint255(stor9.field_1)), swapThreshold * uint256(stor9.field_0) / stor12 / 2);
                            stor25 = 0
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(arg1)] -= arg3
            if stor6[address(arg1)]:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                require ext_code.size(stor20)
                if not stor8[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                if not stor8[address(arg2)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), balanceOf[address(arg2)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor22
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and stor12 > -1 / arg3:
                    revert with 'NH{q', 17
                if not stor13:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] > -(arg3 * stor12 / stor13) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += arg3 * stor12 / stor13
                emit Transfer((arg3 * stor12 / stor13), arg1, this.address);
                if arg3 < arg3 * stor12 / stor13:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (arg3 * stor12 / stor13) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor12 / stor13)
                require ext_code.size(stor20)
                if not stor8[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                if not stor8[address(arg2)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), balanceOf[address(arg2)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor22
                emit Transfer((arg3 - (arg3 * stor12 / stor13)), arg1, arg2);
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient Allowance', 0
        allowance[address(arg1)][address(msg.sender)] -= arg3
        if stor25:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
        else:
            if arg3 > _maxTxAmount:
                if not stor7[address(arg1)]:
                    revert with 0, 'TX Limit Exceeded'
            if pairAddress != msg.sender:
                if not stor25:
                    if swapEnabled:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            stor25 = 1
                            if 1000000000000 * 10^18 < balanceOf[57005]:
                                revert with 'NH{q', 17
                            if -balanceOf[57005] + 1000000000000 * 10^18 < balanceOf[0]:
                                revert with 'NH{q', 17
                            if balanceOf[stor19] and 2 > -1 / balanceOf[stor19]:
                                revert with 'NH{q', 17
                            if stor17 and 2 * balanceOf[stor19] > -1 / stor17:
                                revert with 'NH{q', 17
                            if not -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18:
                                revert with 'NH{q', 18
                            if stor17 * 2 * balanceOf[stor19] / -balanceOf[57005] + -balanceOf[0] + 1000000000000 * 10^18 > stor16:
                                if swapThreshold and 0 > -1 / swapThreshold:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if swapThreshold < 0 / stor12 / 2:
                                    revert with 'NH{q', 17
                                mem[192] = this.address
                                mem[224] = WBNBAddress
                                mem[256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[260] = swapThreshold - (0 / stor12 / 2)
                                idx = 0
                                s = 192
                                t = 452
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (0 / stor12 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[452 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if False and stor10 > 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if False and stor11 > 0:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor20)
                                call stor20.0xd0e30db0 with:
                                   value 0 / stor12 wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / stor12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / stor12 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor12 / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, 0 / stor12), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(Mask(255, 1, 0 / stor12), 0 / stor12 / 2);
                            else:
                                if swapThreshold and uint256(stor9.field_0) > -1 / swapThreshold:
                                    revert with 'NH{q', 17
                                if not stor12:
                                    revert with 'NH{q', 18
                                if swapThreshold < swapThreshold * uint256(stor9.field_0) / stor12 / 2:
                                    revert with 'NH{q', 17
                                mem[192] = this.address
                                mem[224] = WBNBAddress
                                mem[256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[260] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor12 / 2)
                                idx = 0
                                s = 192
                                t = 452
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor12 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[452 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor12 < uint255(stor9.field_1):
                                    revert with 'NH{q', 17
                                if False and uint256(stor9.field_0) > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                if False and stor10 > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                if False and stor11 > 0:
                                    revert with 'NH{q', 17
                                if not stor12 - uint255(stor9.field_1):
                                    revert with 'NH{q', 18
                                require ext_code.size(stor20)
                                call stor20.0xd0e30db0 with:
                                   value 0 / stor12 - uint255(stor9.field_1) wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / stor12 - uint255(stor9.field_1) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if swapThreshold * uint256(stor9.field_0) / stor12 / 2 > 0:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor12 - uint255(stor9.field_1) / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, swapThreshold * uint256(stor9.field_0) / stor12), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(Mask(255, 1, 0 / stor12 - uint255(stor9.field_1)), swapThreshold * uint256(stor9.field_0) / stor12 / 2);
                            stor25 = 0
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(arg1)] -= arg3
            if stor6[address(arg1)]:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                require ext_code.size(stor20)
                if not stor8[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                if not stor8[address(arg2)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), balanceOf[address(arg2)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor22
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and stor12 > -1 / arg3:
                    revert with 'NH{q', 17
                if not stor13:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] > -(arg3 * stor12 / stor13) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += arg3 * stor12 / stor13
                emit Transfer((arg3 * stor12 / stor13), arg1, this.address);
                if arg3 < arg3 * stor12 / stor13:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (arg3 * stor12 / stor13) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor12 / stor13)
                require ext_code.size(stor20)
                if not stor8[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                if not stor8[address(arg2)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), balanceOf[address(arg2)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor22
                emit Transfer((arg3 - (arg3 * stor12 / stor13)), arg1, arg2);
    return 1
}



}
