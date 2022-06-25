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
uint128 stor4; offset 160
address pairContractAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 sub_7d5a3fa0;
uint256 sub_b1fb0e97;
uint256 liquidityFee;
uint256 marketingFee;
uint256 buyBackFee;
uint256 totalFee;
uint256 stor14; offset 2
uint256 feeDenominator;
address stor15;
address stor16;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_b20ae67fAddress;
address sub_50271226Address;
uint256 stor21;
uint256 stor22;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor24; offset 160
address pairAddress;
uint256 stor25;
uint8 stor26;
uint8 sub_8ddc25d3; offset 8
uint8 sub_72eabf07; offset 16
uint256 stor26; offset 16
uint256 stor26; offset 8
uint256 sub_f39c86d8;
uint256 sub_ee0fe003;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 totalSupply;
uint256 stor34;
mapping of uint256 stor35;
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

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function sub_72eabf07(?) {
    return bool(sub_72eabf07)
}

function sub_7d5a3fa0(?) {
    return sub_7d5a3fa0
}

function owner() {
    return owner
}

function sub_8ddc25d3(?) {
    return bool(sub_8ddc25d3)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_b1fb0e97(?) {
    return sub_b1fb0e97
}

function sub_b20ae67f(?) {
    return sub_b20ae67fAddress
}

function sub_b40d09e2(?) {
    return sub_b40d09e2
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function initialDistributionFinished() {
    return bool(uint8(stor4.field_160))
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

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ee0fe003(?) {
    return sub_ee0fe003
}

function master() {
    return masterAddress
}

function sub_f39c86d8(?) {
    return sub_f39c86d8
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isNotInSwap() {
    return not bool(uint8(stor26.field_0))
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function setMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    sub_b40d09e2 = block.timestamp
    Mask(96, 0, stor4.field_160) = 1
}

function checkSwapThreshold() {
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    return (stor25 / stor34)
}

function checkMaxWalletToken() {
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    return (sub_7d5a3fa0 / stor34)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor21 = arg1
    stor22 = arg2
}

function setAntiDump(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    Mask(248, 0, stor26.field_8) = Mask(248, 0, arg1)
}

function setAntiSniper(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    Mask(240, 0, stor26.field_16) = Mask(240, 0, arg1)
}

function sub_6b1f7725(?) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    require arg1 > 1
    require arg1 < 100
    sub_ee0fe003 = arg1
}

function sub_8c512b92(?) {
    require calldata.size - 4 >= 32
    require msg.sender == masterAddress
    require arg1 > 1
    require arg1 < 100
    sub_f39c86d8 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    return (stor35[address(arg1)] / stor34)
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    require arg2 < 30
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_b20ae67fAddress = arg2
    marketingFeeReceiverAddress = arg3
    sub_50271226Address = arg4
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    if stor35[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor35[stor16] > -stor35[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    return (-stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    sub_b1fb0e97 = arg1
    liquidityFee = arg2
    buyBackFee = arg3
    marketingFee = arg4
    if sub_b1fb0e97 + liquidityFee < sub_b1fb0e97:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if buyBackFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = sub_b1fb0e97 + liquidityFee + marketingFee + buyBackFee
    feeDenominator = arg5
    require totalFee < stor14
}

function setMaxWalletToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg2
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2:
        sub_7d5a3fa0 = 0
    else:
        require 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2
        if 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 * arg1 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        sub_7d5a3fa0 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 * arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3:
        stor25 = 0
    else:
        require 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3
        if 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 * arg2 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 != arg2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor25 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 * arg2
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    if stor35[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor35[stor16] > -stor35[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    if not stor35[address(stor24.field_0)] / stor34:
        if not arg1:
            if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34)
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                    return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34)
    else:
        if stor35[address(stor24.field_0)] / stor34:
            if 2 * stor35[address(stor24.field_0)] / stor34 / stor35[address(stor24.field_0)] / stor34 != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg1:
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                    return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34)
            else:
                if arg1:
                    if arg1 * 2 * stor35[address(stor24.field_0)] / stor34 / arg1 != 2 * stor35[address(stor24.field_0)] / stor34:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                        return (arg1 * 2 * stor35[address(stor24.field_0)] / stor34 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34)
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    if stor35[stor15] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor35[stor16] > -stor35[stor15] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor34 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34
    if not stor35[address(stor24.field_0)] / stor34:
        if not arg2:
            if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                    return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 > arg1)
    else:
        if stor35[address(stor24.field_0)] / stor34:
            if 2 * stor35[address(stor24.field_0)] / stor34 / stor35[address(stor24.field_0)] / stor34 != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                    return (0 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 > arg1)
            else:
                if arg2:
                    if arg2 * 2 * stor35[address(stor24.field_0)] / stor34 / arg2 != 2 * stor35[address(stor24.field_0)] / stor34:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34:
                        return (arg2 * 2 * stor35[address(stor24.field_0)] / stor34 / -stor35[stor15] + -stor35[stor16] - 39457584007913129639936 / stor34 > arg1)
    revert
}



}
