contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor3;
uint8 stor4; offset 160
address pairContractAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 sub_5d9280af;
uint256 sellFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 sub_0af08314;
uint256 sub_d7832b11;
uint256 sub_89375abf;
uint256 nextRebase;
uint8 autoRebase;
address stor17; offset 8
address stor18;
address autoLiquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_7d4b5017Address;
uint256 stor22;
uint256 stor23;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor25; offset 160
address pairAddress;
uint256 stor26;
uint8 stor27;
uint8 isOpen; offset 8
uint256 stor27; offset 8
uint256 totalSupply;
uint256 stor29;
mapping of uint256 stor30;
mapping of uint256 allowance;
mapping of uint8 stor32;

function name() {
    return name[0 len name.length]
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
}

function sub_0af08314(?) {
    return sub_0af08314
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

function sellFee() {
    return sellFee
}

function decimals() {
    return decimals
}

function isOpen() {
    return bool(isOpen)
}

function pairContract() {
    return pairContractAddress
}

function sub_5d9280af(?) {
    return sub_5d9280af
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_89375abf(?) {
    return sub_89375abf
}

function owner() {
    return owner
}

function autoRebase() {
    return bool(autoRebase)
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

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor3[address(arg1)])
}

function nextRebase() {
    return nextRebase
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function treasuryFee() {
    return treasuryFee
}

function initialDistributionFinished() {
    return bool(stor4)
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor32[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_63eab10a(?) {
    return block.timestamp >= nextRebase
}

function isNotInSwap() {
    return not bool(uint8(stor27.field_0))
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    stor4 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_4cd9ddf2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_89375abf = arg1
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    nextRebase = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function checkSwapThreshold() {
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    return (stor26 / stor29)
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    autoRebase = uint8(arg1)
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

function sub_01b16827(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_0af08314 = arg1
    sub_d7832b11 = arg2
}

function sub_316d155b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(248, 0, stor27.field_8) = Mask(248, 0, arg1)
}

function updateBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor32[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor22 = arg1
    stor23 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    return (stor30[address(arg1)] / stor29)
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

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_7d4b5017Address = arg3
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

function swipe(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if stor30[stor17] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor30[stor18] > -stor30[stor17] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    return (-stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29)
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
    liquidityFee = arg1
    sub_5d9280af = arg2
    treasuryFee = arg3
    sellFee = arg4
    if arg3 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg2 + arg3 + arg1
    feeDenominator = arg5
    require totalFee < arg5 / 4
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor3[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
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

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(96, 0, stor25.field_160) = Mask(96, 0, arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3:
        stor26 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor26 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if uint8(stor27.field_0):
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
        stor29 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if test266151307() < arg2 + totalSupply:
        totalSupply = test266151307()
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    stor29 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
    require ext_code.size(pairContractAddress)
    call pairContractAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + stor30[address(arg1)] < stor30[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor30[address(arg1)] += arg2
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if stor30[stor17] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor30[stor18] > -stor30[stor17] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if not stor30[address(stor25.field_0)] / stor29:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29)
    if 2 * stor30[address(stor25.field_0)] / stor29 / stor30[address(stor25.field_0)] / stor29 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29)
    if 2 * stor30[address(stor25.field_0)] / stor29 * arg1 / arg1 != 2 * stor30[address(stor25.field_0)] / stor29:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor30[address(stor25.field_0)] / stor29 * arg1 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if stor30[stor17] > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor30[stor18] > -stor30[stor17] - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if not stor30[address(stor25.field_0)] / stor29:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29 > arg1)
    if 2 * stor30[address(stor25.field_0)] / stor29 / stor30[address(stor25.field_0)] / stor29 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29 > arg1)
    if 2 * stor30[address(stor25.field_0)] / stor29 * arg2 / arg2 != 2 * stor30[address(stor25.field_0)] / stor29:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor30[address(stor25.field_0)] / stor29 * arg2 / -stor30[stor17] + -stor30[stor18] - 564039457584007913129639936 / stor29 > arg1)
}



}
