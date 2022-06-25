contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'CRISPO CURRENCY BSC'

const decimals = 9

const symbol = '$CCBSC'


address owner;
address stor3;
address stor4;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16; offset 2
uint256 stor16;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor19;
uint256 stor20;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint8 autoBuybackEnabled;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
address stor34;
uint256 stor35;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor38;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function clearBuybackMultiplier() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor35 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
    stor20 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2 / 100
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor24 = arg1
    stor25 = arg2
    stor27 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoBuybackEnabled = uint8(arg1)
    stor29 = arg2
    stor30 = 0
    stor31 = arg3 / 100
    stor32 = arg4
    stor33 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor34)
    call stor34.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
    stor12 = arg2
    stor13 = arg3
    stor14 = arg4
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor15 = arg1 + arg2 + arg3 + arg4
    uint256(stor16.field_0) = arg5
    require stor15 < Mask(254, 0, stor16.field_2)
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor38 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor38 = 0
    if arg2:
        stor26 = block.timestamp
        emit BuybackMultiplierActive(stor27);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != pairAddress
    stor10[address(arg1)] = uint8(arg2)
    require ext_code.size(stor34)
    if not arg2:
        call stor34.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor34.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor22]:
        if not arg1:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    else:
        if balanceOf[stor22]:
            if 2 * balanceOf[stor22] / balanceOf[stor22] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
            else:
                if arg1:
                    if arg1 * 2 * balanceOf[stor22] / arg1 != 2 * balanceOf[stor22]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg1 * 2 * balanceOf[stor22] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor22]:
        if not arg2:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    else:
        if balanceOf[stor22]:
            if 2 * balanceOf[stor22] / balanceOf[stor22] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
            else:
                if arg2:
                    if arg2 * 2 * balanceOf[stor22] / arg2 != 2 * balanceOf[stor22]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg2 * 2 * balanceOf[stor22] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    revert
}

function getMultipliedFee() {
    if stor26 + stor27 < stor26:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor26 + stor27:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor15:
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor25
        if stor15 > 0 / stor25:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor25) - stor15:
            if stor27 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor27
            if stor15 + (0 / stor27) < stor15:
                revert with 0, 'SafeMath: addition overflow'
            return (stor15 + (0 / stor27))
        require (0 / stor25) - stor15
        if (stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / (0 / stor25) - stor15 != stor26 + stor27 - block.timestamp:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if stor27 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor27
        if stor15 + ((stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27) < stor15:
            revert with 0, 'SafeMath: addition overflow'
        return (stor15 + ((stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
    require stor15
    if stor15 * stor24 / stor15 != stor24:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor25 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor25
    if stor15 > stor15 * stor24 / stor25:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor15 * stor24 / stor25) - stor15:
        if stor27 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor27
        if stor15 + (0 / stor27) < stor15:
            revert with 0, 'SafeMath: addition overflow'
        return (stor15 + (0 / stor27))
    require (stor15 * stor24 / stor25) - stor15
    if (stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / (stor15 * stor24 / stor25) - stor15 != stor26 + stor27 - block.timestamp:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if stor27 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor27
    if stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27) < stor15:
        revert with 0, 'SafeMath: addition overflow'
    return (stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 2 >= block.number:
        if 2 > uint256(stor16.field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        return (uint256(stor16.field_0) - 2)
    if not arg1:
        return stor15
    if stor26 + stor27 < stor26:
        revert with 0, 'SafeMath: addition overflow'
    if stor26 + stor27 <= block.timestamp:
        return stor15
    if stor26 + stor27 < stor26:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor26 + stor27:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor15:
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor25
        if stor15 > 0 / stor25:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor25) - stor15:
            if stor27 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor27
            if stor15 + (0 / stor27) < stor15:
                revert with 0, 'SafeMath: addition overflow'
            return (stor15 + (0 / stor27))
        require (0 / stor25) - stor15
        if (stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / (0 / stor25) - stor15 != stor26 + stor27 - block.timestamp:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if stor27 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor27
        if stor15 + ((stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27) < stor15:
            revert with 0, 'SafeMath: addition overflow'
        return (stor15 + ((stor26 * 0 / stor25) + (stor27 * 0 / stor25) - (block.timestamp * 0 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
    require stor15
    if stor15 * stor24 / stor15 != stor24:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor25 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor25
    if stor15 > stor15 * stor24 / stor25:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor15 * stor24 / stor25) - stor15:
        if stor27 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor27
        if stor15 + (0 / stor27) < stor15:
            revert with 0, 'SafeMath: addition overflow'
        return (stor15 + (0 / stor27))
    require (stor15 * stor24 / stor25) - stor15
    if (stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / (stor15 * stor24 / stor25) - stor15 != stor26 + stor27 - block.timestamp:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if stor27 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor27
    if stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27) < stor15:
        revert with 0, 'SafeMath: addition overflow'
    return (stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
}



}
