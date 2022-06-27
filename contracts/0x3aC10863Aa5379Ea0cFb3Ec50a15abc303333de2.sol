contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_d37e219d(?)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address masterAddress;
uint8 stor4; offset 160
address pairContractAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 sub_7d5a3fa0;
uint256 developmentFee;
uint256 liquidityFee;
uint256 marketingFee;
uint256 buyBackFee;
uint256 totalFee;
uint256 feeDenominator;
address stor15;
address stor16;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_6ec518b8Address;
address sub_50271226Address;
uint256 stor21;
uint256 stor22;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor24; offset 160
address pairAddress;
uint256 stor25;
uint8 stor26;
mapping of uint8 stor27;
uint8 stor28;
uint256 stor28; offset 8
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor33;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor34; offset 16
uint256 totalSupply;
uint256 stor37;
mapping of uint256 stor38;
mapping of uint256 allowance;
uint256 sub_b40d09e2;

function name() {
    return name[0 len name.length]
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

function decimals() {
    return decimals
}

function buyBackFee() {
    return buyBackFee
}

function pairContract() {
    return pairContractAddress
}

function sub_50271226(?) {
    return sub_50271226Address
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_6ec518b8(?) {
    return sub_6ec518b8Address
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function sub_7d5a3fa0(?) {
    return sub_7d5a3fa0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function developmentFee() {
    return developmentFee
}

function pair() {
    return pairAddress
}

function sub_b40d09e2(?) {
    return sub_b40d09e2
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function initialDistributionFinished() {
    return bool(stor4)
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function sub_e5339685(?) {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor26)
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_51ce8e75(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor31 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeDivider(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor33 = arg1
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    sub_b40d09e2 = block.timestamp
    stor4 = 1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function checkSwapThreshold() {
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    return (stor25 / stor37)
}

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function sub_9b1f85a4(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor27[address(arg1)] = uint8(arg2)
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function checkMaxWalletToken() {
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    return (sub_7d5a3fa0 / stor37)
}

function setMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function setAntiDump(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    uint8(stor28.field_0) = uint8(arg1)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor21 = arg1
    stor22 = arg2
}

function sub_6b1f7725(?) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    require arg1 > 1
    require arg1 < 100
    stor30 = arg1
}

function sub_8c512b92(?) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    require arg1 > 1
    require arg1 < 100
    stor29 = arg1
}

function setAntiSniper(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    return (stor38[address(arg1)] / stor37)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    require arg2 < 30
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor34 = Mask(240, 16, arg1) >> 16
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor4:
        if owner != msg.sender:
            require stor5[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_6ec518b8Address = arg2
    marketingFeeReceiverAddress = arg3
    sub_50271226Address = arg4
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getCirculatingSupply() {
    if stor38[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor38[stor16] > -stor38[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    return (-stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor4:
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    developmentFee = arg1
    liquidityFee = arg2
    buyBackFee = arg3
    marketingFee = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg3 + arg4 + arg2 + arg1
    feeDenominator = arg5
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor4:
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function setMaxWalletToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2:
        sub_7d5a3fa0 = 0
    else:
        if arg1 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        sub_7d5a3fa0 = arg1 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3:
        stor25 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 != arg2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor25 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3
}

function sub_c9de0591(?) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if stor26:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
        else:
            if -arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply += arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        stor37 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x1d4e456b: totalSupply, arg1
    return totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    if stor38[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor38[stor16] > -stor38[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    if not stor38[address(stor24.field_0)] / stor37:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37)
    if 2 * stor38[address(stor24.field_0)] / stor37 / stor38[address(stor24.field_0)] / stor37 != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37)
    if 2 * stor38[address(stor24.field_0)] / stor37 * arg1 / arg1 != 2 * stor38[address(stor24.field_0)] / stor37:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor38[address(stor24.field_0)] / stor37 * arg1 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    if stor38[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor38[stor16] > -stor38[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor37:
        revert with 0, 'SafeMath: division by zero'
    if not stor38[address(stor24.field_0)] / stor37:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37 > arg1)
    if 2 * stor38[address(stor24.field_0)] / stor37 / stor38[address(stor24.field_0)] / stor37 != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37 > arg1)
    if 2 * stor38[address(stor24.field_0)] / stor37 * arg2 / arg2 != 2 * stor38[address(stor24.field_0)] / stor37:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor38[address(stor24.field_0)] / stor37 * arg2 / -stor38[stor15] + -stor38[stor16] - 39457584007913129639936 / stor37 > arg1)
}



}
