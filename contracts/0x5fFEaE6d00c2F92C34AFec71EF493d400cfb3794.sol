contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const getBNBQuantityInContract = eth.balance(this.address)

const decimals = 18

const symbol = '', 0


address _owner;
address stor1;
uint256 geUnlockTime;
address WBNBAddress;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 liquidityFee;
uint256 buybackFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 stor17;
uint256 stor18;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor21;
uint256 stor22;
address routerAddress;
uint8 autoBuybackEnabled; offset 160
uint8 tradingOpen; offset 168
uint128 stor24; offset 168
uint128 stor24; offset 160
address pairAddress;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint8 sub_ac1eaf75;
address distributorAddress; offset 8
uint256 stor30;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 sub_1fb86812;
uint256 sub_8db2b173;
uint8 stor35;
uint8 sub_fc319b2e; offset 168
uint128 stor35; offset 168
address stor35; offset 8
uint256 sub_55d60281;
uint256 sub_79a2d089;
uint256 stor38;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1fb86812(?) {
    return bool(sub_1fb86812)
}

function buybackFee() {
    return buybackFee
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function sub_55d60281(?) {
    return sub_55d60281
}

function getIsDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getIsFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function _maxWalletToken() {
    return _maxWalletToken
}

function sub_79a2d089(?) {
    return sub_79a2d089
}

function _maxTxAmount() {
    return _maxTxAmount
}

function reflectionFee() {
    return reflectionFee
}

function owner() {
    return _owner
}

function sub_8db2b173(?) {
    return sub_8db2b173
}

function WBNB() {
    return WBNBAddress
}

function liquidityFee() {
    return liquidityFee
}

function getIsTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function pair() {
    return pairAddress
}

function sub_ac1eaf75(?) {
    return bool(sub_ac1eaf75)
}

function _owner() {
    return _owner
}

function geUnlockTime() {
    return geUnlockTime
}

function getDistributorAddress() {
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

function router() {
    return routerAddress
}

function sub_fc319b2e(?) {
    return bool(sub_fc319b2e)
}

function tradingOpen() {
    return bool(tradingOpen)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return stor18
    return stor17
}

function renounceOwnership() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: _owner, 0
    _owner = 0
}

function setBuyingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
}

function setDistributorGas(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 10^6
    stor30 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
    stor22 = arg2
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= totalSupply / 2500
    _maxTxAmount = arg1
}

function setAllowTransferToMarketing(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ac1eaf75 = uint8(arg1)
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor24.field_168) = Mask(88, 0, arg1)
}

function setAutoBuyBack(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4])
}

function setDexRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor35.field_8) = arg1
    routerAddress = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxWalletToken = totalSupply * arg1 / 100
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked'
    emit 0xfe8be007: _owner, stor1
    _owner = stor1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = _owner
    _owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0xfe8be007: _owner, 0
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    stor25 = 0
    stor26 = arg2
    stor27 = arg3
    stor28 = block.number
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: _owner, arg1
    _owner = arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2, bool arg3, bool arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    sub_1fb86812 = uint8(arg3)
    sub_8db2b173 = arg5
    Mask(88, 0, stor35.field_168) = Mask(88, 0, arg4)
}

function setDistributionCriteria(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(distributorAddress)
    call distributorAddress.setDistributionCriteria(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manuallyProcessDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(distributorAddress)
    if not arg1:
        call distributorAddress.processManually() with:
             gas gas_remaining wei
    else:
        if arg1 != 1:
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
        else:
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args stor30
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityFee = arg1
    buybackFee = arg2
    reflectionFee = arg3
    marketingFee = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor17 = arg1 + arg2 + arg3 + arg4
    stor38 = arg5
    require stor17 < arg5 / 2
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
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

function triggerVaultBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor35.field_0) = 1
    mem[128] = WBNBAddress
    mem[160] = this.address
    if block.timestamp > -31:
        revert with 0, 17
    if block.timestamp + 30 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
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
        args 0, 128, stor4, block.timestamp + 30, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4 == stor4:
        if sub_1fb86812:
            if balanceOf[stor4] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalSupply < balanceOf[stor4]:
                revert with 0, 17
            if not sub_8db2b173:
                revert with 0, 'SafeMath: division by zero', 0
            swapThreshold = totalSupply - balanceOf[stor4] / sub_8db2b173
    uint8(stor35.field_0) = 0
    emit VaultBuyBackAndBurn(arg1);
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] > arg1)
    if balanceOf[address(stor24.field_0)] and 2 > -1 / balanceOf[address(stor24.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor24.field_0)] / balanceOf[address(stor24.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor24.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor24.field_0)] / arg2 != 2 * balanceOf[address(stor24.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor24.field_0)] / totalSupply - balanceOf[stor4] > arg1)
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 8
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens to airdrop'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _737 = mem[64]
        mem[64] = mem[64] + 64
        mem[_737] = 20
        mem[_737 + 32] = 'Insufficient Balance' << 96
        mem[32] = 8
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _739 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _739 + 68] = mem[idx + _737 + 32]
                idx = idx + 32
                continue 
            mem[_739 + 88] = 0
            revert with memory
              from mem[64]
               len _739 + -mem[64] + 100
        if balanceOf[address(arg1)] < cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        mem[0] = arg1
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        mem[32] = 10
        if stor10[address(arg1)]:
            if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !cd[((32 * idx) + arg3 + 36)]:
                revert with 0, 17
            if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        else:
            if pairAddress != address(cd[((32 * idx) + arg2 + 36)]):
                if not cd[((32 * idx) + arg3 + 36)]:
                    _755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_755] = 26
                    mem[_755 + 32] = 'SafeMath: division by zero'
                    if not stor38:
                        _760 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _760 + 68] = mem[idx + _755 + 32]
                            idx = idx + 32
                            continue 
                        mem[_760 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _760 + -mem[64] + 100
                    if balanceOf[this.address] > !(0 / stor38):
                        revert with 0, 17
                    if balanceOf[this.address] + (0 / stor38) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = this.address
                    mem[32] = 8
                    balanceOf[this.address] += 0 / stor38
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 30
                    mem[_807 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor38 > cd[((32 * idx) + arg3 + 36)]:
                        _814 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _814 + 68] = mem[idx + _807 + 32]
                            idx = idx + 32
                            continue 
                        mem[_814 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _814 + -mem[64] + 100
                    if cd[((32 * idx) + arg3 + 36)] < 0 / stor38:
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !(cd[((32 * idx) + arg3 + 36)] - (0 / stor38)):
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (0 / stor38) < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[((32 * idx) + arg2 + 36)])] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (0 / stor38)
                else:
                    if cd[((32 * idx) + arg3 + 36)] and stor18 > -1 / cd[((32 * idx) + arg3 + 36)]:
                        revert with 0, 17
                    if not cd[((32 * idx) + arg3 + 36)]:
                        revert with 0, 18
                    if cd[((32 * idx) + arg3 + 36)] * stor18 / cd[((32 * idx) + arg3 + 36)] != stor18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_778] = 26
                    mem[_778 + 32] = 'SafeMath: division by zero'
                    if not stor38:
                        _784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _784 + 68] = mem[idx + _778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_784 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _784 + -mem[64] + 100
                    if balanceOf[this.address] > !(cd[((32 * idx) + arg3 + 36)] * stor18 / stor38):
                        revert with 0, 17
                    if balanceOf[this.address] + (cd[((32 * idx) + arg3 + 36)] * stor18 / stor38) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = this.address
                    mem[32] = 8
                    balanceOf[this.address] += cd[((32 * idx) + arg3 + 36)] * stor18 / stor38
                    _827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_827] = 30
                    mem[_827 + 32] = 'SafeMath: subtraction overflow'
                    if cd[((32 * idx) + arg3 + 36)] * stor18 / stor38 > cd[((32 * idx) + arg3 + 36)]:
                        _831 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _831 + 68] = mem[idx + _827 + 32]
                            idx = idx + 32
                            continue 
                        mem[_831 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _831 + -mem[64] + 100
                    if cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg3 + 36)] * stor18 / stor38:
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !(cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor18 / stor38)):
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor18 / stor38) < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[((32 * idx) + arg2 + 36)])] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor18 / stor38)
            else:
                if not cd[((32 * idx) + arg3 + 36)]:
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 26
                    mem[_756 + 32] = 'SafeMath: division by zero'
                    if not stor38:
                        _761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _761 + 68] = mem[idx + _756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_761 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _761 + -mem[64] + 100
                    if balanceOf[this.address] > !(0 / stor38):
                        revert with 0, 17
                    if balanceOf[this.address] + (0 / stor38) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = this.address
                    mem[32] = 8
                    balanceOf[this.address] += 0 / stor38
                    _809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_809] = 30
                    mem[_809 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor38 > cd[((32 * idx) + arg3 + 36)]:
                        _815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _815 + 68] = mem[idx + _809 + 32]
                            idx = idx + 32
                            continue 
                        mem[_815 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _815 + -mem[64] + 100
                    if cd[((32 * idx) + arg3 + 36)] < 0 / stor38:
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !(cd[((32 * idx) + arg3 + 36)] - (0 / stor38)):
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (0 / stor38) < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[((32 * idx) + arg2 + 36)])] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (0 / stor38)
                else:
                    if cd[((32 * idx) + arg3 + 36)] and stor17 > -1 / cd[((32 * idx) + arg3 + 36)]:
                        revert with 0, 17
                    if not cd[((32 * idx) + arg3 + 36)]:
                        revert with 0, 18
                    if cd[((32 * idx) + arg3 + 36)] * stor17 / cd[((32 * idx) + arg3 + 36)] != stor17:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_779] = 26
                    mem[_779 + 32] = 'SafeMath: division by zero'
                    if not stor38:
                        _786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _786 + 68] = mem[idx + _779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_786 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _786 + -mem[64] + 100
                    if balanceOf[this.address] > !(cd[((32 * idx) + arg3 + 36)] * stor17 / stor38):
                        revert with 0, 17
                    if balanceOf[this.address] + (cd[((32 * idx) + arg3 + 36)] * stor17 / stor38) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = this.address
                    mem[32] = 8
                    balanceOf[this.address] += cd[((32 * idx) + arg3 + 36)] * stor17 / stor38
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 30
                    mem[_828 + 32] = 'SafeMath: subtraction overflow'
                    if cd[((32 * idx) + arg3 + 36)] * stor17 / stor38 > cd[((32 * idx) + arg3 + 36)]:
                        _834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _834 + 68] = mem[idx + _828 + 32]
                            idx = idx + 32
                            continue 
                        mem[_834 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _834 + -mem[64] + 100
                    if cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg3 + 36)] * stor17 / stor38:
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !(cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor17 / stor38)):
                        revert with 0, 17
                    if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor17 / stor38) < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[((32 * idx) + arg2 + 36)])] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] - (cd[((32 * idx) + arg3 + 36)] * stor17 / stor38)
        if not stor12[address(arg1)]:
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = balanceOf[address(arg1)]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
        if not stor12[address(cd[((32 * idx) + arg2 + 36)])]:
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 12
        if not stor12[address(cd[((32 * idx) + arg2 + 36)])]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor12[address(arg1)]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}



}
