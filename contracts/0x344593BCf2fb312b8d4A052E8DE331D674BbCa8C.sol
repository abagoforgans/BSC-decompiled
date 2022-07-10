contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'KingMcWagmi'

const decimals = 9

const symbol = 'KMW'


address owner;
address stor2;
address stor3;
array of uint256 currentlyServing;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18; offset 2
uint256 stor18;
uint256 _sellMultiplierNumerator;
uint256 _sellMultiplierDenominator;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor28;
uint256 stor29;
uint8 autoBuybackEnabled;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
address stor36;
uint256 stor37;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor40;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function _sellMultiplierNumerator() {
    return _sellMultiplierNumerator
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function currentlyServing() {
    return currentlyServing[0 len currentlyServing.length]
}

function _sellMultiplierDenominator() {
    return _sellMultiplierDenominator
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
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
    stor28 = 0
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
    stor10[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor37 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
    stor24 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 > 0
    swapEnabled = uint8(arg1)
    require arg2
    swapThreshold = totalSupply / arg2
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function setSellMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg2
    require arg1 / arg2 <= 2
    _sellMultiplierNumerator = arg1
    _sellMultiplierDenominator = arg2
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoBuybackEnabled = uint8(arg1)
    stor31 = arg2
    stor32 = 0
    stor33 = arg3 / 100
    stor34 = arg4
    stor35 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor36)
    call stor36.0x2d48e896 with:
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
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setReflectToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Enter valid contract address'
    if not ext_code.hash(arg1):
        revert with 0, 'Enter valid contract address'
    require ext_code.size(stor36)
    call stor36.changeToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor17 = arg1 + arg2 + arg3 + arg4
    uint256(stor18.field_0) = arg5
    require stor17 < Mask(254, 0, stor18.field_2)
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor40 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor2, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor40 = 0
    if arg2:
        stor28 = block.timestamp
        emit BuybackMultiplierActive(stor29);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != pairAddress
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor36)
    if not arg2:
        call stor36.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor36.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTxLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg2 <= 10000
    if not totalSupply:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxTxAmount = 0 / arg2
    else:
        require totalSupply
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxTxAmount = totalSupply * arg1 / arg2
}

function setMaxWallet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg2 <= 10000
    if not totalSupply:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxWalletSize = 0 / arg2
    else:
        require totalSupply
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxWalletSize = totalSupply * arg1 / arg2
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 1 >= block.number:
        if 1 > uint256(stor18.field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        return (uint256(stor18.field_0) - 1)
    if not arg1:
        return stor17
    if not stor17:
        if _sellMultiplierDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        if _sellMultiplierDenominator:
            return (0 / _sellMultiplierDenominator)
    else:
        if stor17:
            if stor17 * _sellMultiplierNumerator / stor17 != _sellMultiplierNumerator:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if _sellMultiplierDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            if _sellMultiplierDenominator:
                return (stor17 * _sellMultiplierNumerator / _sellMultiplierDenominator)
    revert
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor26]:
        if not arg1:
            if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                    return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    else:
        if balanceOf[stor26]:
            if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                    return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
            else:
                if arg1:
                    if arg1 * 2 * balanceOf[stor26] / arg1 != 2 * balanceOf[stor26]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                        return (arg1 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor26]:
        if not arg2:
            if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                    return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    else:
        if balanceOf[stor26]:
            if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                    return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
            else:
                if arg2:
                    if arg2 * 2 * balanceOf[stor26] / arg2 != 2 * balanceOf[stor26]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor2] - balanceOf[stor3] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor2] - balanceOf[stor3]:
                        return (arg2 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    revert
}



}
