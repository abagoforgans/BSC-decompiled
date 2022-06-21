contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferLiquidity(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#  - sub_c39bbb43(?)
#  - _fallback()
#
const name = 'Attack On Floki', 0

const decimals = 9

const symbol = '', 0


address owner;
uint256 totalSupply;
uint256 _transferLimit;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 totalFee;
uint256 stor14;
address stor15;
address stor16;
address stor17;
uint256 stor18;
uint256 stor19;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor21; offset 168
uint128 stor21; offset 160
address pairAddress;
uint256 stor22;
uint256 stor23;
uint256 swapThreshold;
uint8 stor25;
uint256 stor42C6;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function _transferLimit() {
    return _transferLimit
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalFee
}

function router() {
    return routerAddress
}

function sub_850c0bd6(?) {
    return stor8, stor9, stor10, stor12, stor11, totalFee, stor14
}

function clearBalance() {
    call stor15 with:
       value eth.balance(this.address) wei
         gas 30000 wei
    require ext_call.success
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
    stor19 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    stor17 = arg3
    stor16 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor21.field_160) = Mask(96, 0, arg1)
    Mask(88, 0, stor21.field_168) = Mask(88, 0, arg4)
    stor22 = arg2
    stor23 = arg3
}

function getCirculatingSupply() {
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0] > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0]:
        revert with 0, 17
    return (totalSupply - stor42C6 - balanceOf[0])
}

function triggerManualBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25 = 1
    mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[160] = this.address
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
        args 0, 128, stor17, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor25 = 0
}

function sub_bae19235(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max wallet must be greater than 1%'
    if arg2 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max wallet must be greater than 1%'
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        _maxWalletSize = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        _maxWalletSize = totalSupply * arg1 / arg2
}

function sub_fadf5ba1(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max transfer must be greater than 1%'
    if arg2 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max transfer must be greater than 1%'
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        _transferLimit = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        _transferLimit = totalSupply * arg1 / arg2
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0] > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0]:
        revert with 0, 17
    if not balanceOf[address(stor21.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor42C6 - balanceOf[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0])
    if balanceOf[address(stor21.field_0)] and 2 > -1 / balanceOf[address(stor21.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor21.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor21.field_0)] / balanceOf[address(stor21.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - stor42C6 - balanceOf[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0])
    if arg1 and 2 * balanceOf[address(stor21.field_0)] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor21.field_0)] / arg1 != 2 * balanceOf[address(stor21.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor42C6 - balanceOf[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor21.field_0)] / totalSupply - stor42C6 - balanceOf[0])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0] > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0]:
        revert with 0, 17
    if not balanceOf[address(stor21.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor42C6 - balanceOf[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0] > arg1)
    if balanceOf[address(stor21.field_0)] and 2 > -1 / balanceOf[address(stor21.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor21.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor21.field_0)] / balanceOf[address(stor21.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - stor42C6 - balanceOf[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0] > arg1)
    if arg2 and 2 * balanceOf[address(stor21.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor21.field_0)] / arg2 != 2 * balanceOf[address(stor21.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor42C6 - balanceOf[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor21.field_0)] / totalSupply - stor42C6 - balanceOf[0] > arg1)
}



}
