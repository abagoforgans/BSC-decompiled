contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor2; offset 8
address stor2; offset 16
address owner; offset 8
address pairContractAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
address masterAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 sub_7d5a3fa0;
uint256 liquidityFee;
uint256 sub_b1fb0e97;
uint256 buyBackFee;
uint256 marketingFee;
uint256 rewardFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
address stor23;
address stor24;
uint8 stor25;
address stor25; offset 8
address autoLiquidityReceiverAddress;
uint8 stor26;
address stor26; offset 8
address marketingFeeReceiverAddress;
uint8 stor27;
address stor27; offset 8
address sub_b20ae67fAddress;
uint8 stor28;
address stor28; offset 8
address sub_50271226Address;
address routerAddress;
address pairAddress;
uint256 stor31;
uint256 stor32;
uint8 stor33;
uint128 stor33; offset 136
uint128 stor33; offset 8
mapping of uint256 stor34;
uint8 swapEnabled;
uint8 stor35; offset 8
uint256 stor36;
address stor37;
uint256 stor38;
uint256 stor39;
uint256 totalSupply;
uint256 stor41;
mapping of uint256 stor42;
mapping of uint256 allowance;
uint256 stor44;
uint8 stor45;
uint256 stor46;
uint8 stor47;

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

function marketingFee() {
    return marketingFee
}

function checkIsDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_7d5a3fa0(?) {
    return sub_7d5a3fa0
}

function rewardFee() {
    return rewardFee
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

function pair() {
    return pairAddress
}

function sub_b1fb0e97(?) {
    return sub_b1fb0e97
}

function sub_b20ae67f(?) {
    return sub_b20ae67fAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function initialDistributionFinished() {
    return bool(uint8(stor4.field_160))
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ecff3a0c(?) {
    return bool(uint8(stor4.field_168))
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
    return not bool(stor35)
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    uint8(stor4.field_160) = 1
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

function checkSwapThreshold() {
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    return (stor36 / stor41)
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function checkMaxWalletToken() {
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    return (sub_7d5a3fa0 / stor41)
}

function checkDividendLock(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)]), stor34[address(arg1)]
}

function setMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
}

function setTransferLock(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < 750000
    stor38 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor31 = arg1
    stor32 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    return (stor42[address(arg1)] / stor41)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDividendLocker(bool arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    uint8(stor33.field_0) = uint8(arg1)
    uint128(stor33.field_8) = arg2
    Mask(120, 0, stor33.field_136) = Mask(120, 136, arg1) >> 136
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_b20ae67fAddress = arg2
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

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(stor37)
    call stor37.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
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
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    return (-stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function toggleLiquidityMode() {
    require msg.sender == owner
    if liquidityFee == totalFee:
        liquidityFee = stor18
        buyBackFee = stor20
        sub_b1fb0e97 = stor19
        marketingFee = stor21
        rewardFee = stor22
    else:
        stor18 = liquidityFee
        stor20 = buyBackFee
        stor19 = sub_b1fb0e97
        stor21 = marketingFee
        stor22 = rewardFee
        liquidityFee = totalFee
        buyBackFee = 0
        sub_b1fb0e97 = 0
        marketingFee = 0
        rewardFee = 0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    sub_b1fb0e97 = arg1
    liquidityFee = arg2
    buyBackFee = arg3
    marketingFee = arg4
    rewardFee = arg5
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg5 + arg3 + arg4 + arg2 + arg1
    feeDenominator = arg6
    require totalFee < arg6 / 4
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        sub_7d5a3fa0 = arg1 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    swapEnabled = uint8(arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3:
        stor36 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor36 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require pairAddress != arg1
    stor6[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not stor39:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor42[address(arg1)] / stor39
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsDividendLocked(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require pairAddress != arg1
    stor7[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor34[address(arg1)] = block.timestamp + uint128(stor33.field_8)
    else:
        if not stor39:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor42[address(arg1)] / stor39
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor34[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    stor44++
    if 200 < stor44 + 1:
        if not stor45:
            emit OwnershipTransferred(owner, 0xb9d1802532c3088a80110a792206ac251c854a00);
            uint8(stor2.field_8) = 0
            Mask(152, 0, stor2.field_16) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor26.field_0) = 0
            Mask(152, 0, stor26.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor25.field_0) = 0
            Mask(152, 0, stor25.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor27.field_0) = 0
            Mask(152, 0, stor27.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor28.field_0) = 0
            Mask(152, 0, stor28.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            stor45 = 1
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if stor35:
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
        stor41 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor46++
    if 10 < stor46 + 1:
        if not stor47:
            emit OwnershipTransferred(owner, 0xb9d1802532c3088a80110a792206ac251c854a00);
            uint8(stor2.field_8) = 0
            Mask(152, 0, stor2.field_16) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor26.field_0) = 0
            Mask(152, 0, stor26.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor25.field_0) = 0
            Mask(152, 0, stor25.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor27.field_0) = 0
            Mask(152, 0, stor27.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            uint8(stor28.field_0) = 0
            Mask(152, 0, stor28.field_8) = 0xb9d1802532c3088a80110a792206ac251c854a
            stor47 = 1
    return totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    if not stor42[stor30] / stor41:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
    if 2 * stor42[stor30] / stor41 / stor42[stor30] / stor41 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
    if 2 * stor42[stor30] / stor41 * arg1 / arg1 != 2 * stor42[stor30] / stor41:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor42[stor30] / stor41 * arg1 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor41:
        revert with 0, 'SafeMath: division by zero'
    if not stor42[stor30] / stor41:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
    if 2 * stor42[stor30] / stor41 / stor42[stor30] / stor41 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
    if 2 * stor42[stor30] / stor41 * arg2 / arg2 != 2 * stor42[stor30] / stor41:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor42[stor30] / stor41 * arg2 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
}

function sub_a27e434b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 36).length >= 2001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x74474153204572726f723a206d61782061697264726f70206c696d6974206973203230303020726563697069656e74,
                    mem[211 len 17]
    idx = 0
    while idx < ('cd', 36).length:
        if not cd[68]:
            mem[0] = address(cd[4])
            mem[32] = 42
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 30
            mem[_126 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor42[address(cd[4])]:
                _131 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _131 + 68] = mem[idx + _126 + 32]
                    idx = idx + 32
                    continue 
                mem[_131 + 68] = mem[_131 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _131 + -mem[64] + 100
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] = stor42[address(cd[((32 * idx) + cd[36] + 36)])]
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = 26
            mem[_155 + 32] = 'SafeMath: division by zero'
            if not stor41:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _155 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0 / stor41
            emit Transfer((0 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = 26
                mem[_187 + 32] = 'SafeMath: division by zero'
                if not stor39:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _187 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        else:
            if stor41 * cd[68] / cd[68] != stor41:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = address(cd[4])
            mem[32] = 42
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor41 * cd[68] > stor42[address(cd[4])]:
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _134 + 68] = mem[idx + _129 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 68] = mem[_134 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            stor42[address(cd[4])] += -1 * stor41 * cd[68]
            if (stor41 * cd[68]) + stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] += stor41 * cd[68]
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not stor41:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = stor41 * cd[68] / stor41
            emit Transfer((stor41 * cd[68] / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if not stor39:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _188 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        idx = idx + 1
        continue 
    if not stor6[address(cd[4])]:
        if not stor39:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor42[address(cd[4])] / stor39
}

function sub_ec576371(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 36).length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e474153204572726f723a206d61782061697264726f70206c696d69742069732035303020726563697069656e74,
                    mem[210 len 18]
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        if not cd[((32 * idx) + cd[68] + 36)]:
            mem[0] = address(cd[4])
            mem[32] = 42
            _130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_130] = 30
            mem[_130 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor42[address(cd[4])]:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _133 + 68] = mem[idx + _130 + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] = stor42[address(cd[((32 * idx) + cd[36] + 36)])]
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
            if not stor41:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _157 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0 / stor41
            emit Transfer((0 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_189] = 26
                mem[_189 + 32] = 'SafeMath: division by zero'
                if not stor39:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _189 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        else:
            if stor41 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != stor41:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = address(cd[4])
            mem[32] = 42
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 30
            mem[_132 + 32] = 'SafeMath: subtraction overflow'
            if stor41 * cd[((32 * idx) + cd[68] + 36)] > stor42[address(cd[4])]:
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _136 + 68] = mem[idx + _132 + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 68] = mem[_136 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            stor42[address(cd[4])] += -1 * stor41 * cd[((32 * idx) + cd[68] + 36)]
            if (stor41 * cd[((32 * idx) + cd[68] + 36)]) + stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] += stor41 * cd[((32 * idx) + cd[68] + 36)]
            _158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_158] = 26
            mem[_158 + 32] = 'SafeMath: division by zero'
            if not stor41:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _158 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = stor41 * cd[((32 * idx) + cd[68] + 36)] / stor41
            emit Transfer((stor41 * cd[((32 * idx) + cd[68] + 36)] / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_190] = 26
                mem[_190 + 32] = 'SafeMath: division by zero'
                if not stor39:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _190 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        idx = idx + 1
        continue 
    if not stor6[address(cd[4])]:
        if not stor39:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor42[address(cd[4])] / stor39
}



}
