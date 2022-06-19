contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferLiquidity(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = 'TESTING', 0


address owner;
uint256 totalSupply;
uint256 _maxWalletSize;
mapping of struct balanceOf;
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
uint128 stor24; offset 168
uint128 stor24; offset 160
address pairAddress;
uint256 stor25;
uint256 stor26;
uint256 swapThreshold;
uint8 stor28;
uint256 stor42C6;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
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

function sub_92354b9c(?) {
    return balanceOf[address(stor24.field_0)].field_0
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

function sub_264a3e60(?) {
    return _maxWalletSize / 10^9, totalSupply / 10^9
}

function sub_850c0bd6(?) {
    return stor8, stor10, stor9, stor12, stor11, totalFee, stor14
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

function sub_d962cf58(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
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
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    Mask(88, 0, stor24.field_168) = Mask(88, 0, arg4)
    stor25 = arg2
    stor26 = arg3
    swapThreshold = arg2
}

function getCirculatingSupply() {
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0].field_0:
        revert with 0, 17
    return (totalSupply - stor42C6 - balanceOf[0].field_0)
}

function sub_864672bd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 0, totalSupply, totalSupply, eth.balance(this.address), address(msg.sender), 9999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function triggerBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28 = 1
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
    stor28 = 0
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

function sub_e5be54bf(?) {
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0].field_0:
        revert with 0, 17
    if not totalSupply - stor42C6 - balanceOf[0].field_0:
        if not balanceOf[address(stor24.field_0)].field_1:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / balanceOf[address(stor24.field_0)].field_1)
    if totalSupply - stor42C6 - balanceOf[0].field_0 and 100 > -1 / totalSupply - stor42C6 - balanceOf[0].field_0:
        revert with 0, 17
    if not totalSupply - stor42C6 - balanceOf[0].field_0:
        revert with 0, 18
    if (100 * totalSupply) - (100 * stor42C6) - (100 * balanceOf[0].field_0) / totalSupply - stor42C6 - balanceOf[0].field_0 != 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balanceOf[address(stor24.field_0)].field_1:
        revert with 0, 'SafeMath: division by zero', 0
    return ((100 * totalSupply) - (100 * stor42C6) - (100 * balanceOf[0].field_0) / balanceOf[address(stor24.field_0)].field_1)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0].field_0:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)].field_0:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor42C6 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0].field_0)
    if balanceOf[address(stor24.field_0)].field_0 and 2 > -1 / balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 18
    if 2 * balanceOf[address(stor24.field_0)].field_0 / balanceOf[address(stor24.field_0)].field_0 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - stor42C6 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0].field_0)
    if arg1 and 2 * balanceOf[address(stor24.field_0)].field_0 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor24.field_0)].field_0 / arg1 != 2 * balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor42C6 - balanceOf[0].field_0:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor24.field_0)].field_0 / totalSupply - stor42C6 - balanceOf[0].field_0)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor42C6 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor42C6:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor42C6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor42C6 < balanceOf[0].field_0:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)].field_0:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor42C6 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0].field_0 > arg1)
    if balanceOf[address(stor24.field_0)].field_0 and 2 > -1 / balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 17
    if not balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 18
    if 2 * balanceOf[address(stor24.field_0)].field_0 / balanceOf[address(stor24.field_0)].field_0 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - stor42C6 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor42C6 - balanceOf[0].field_0 > arg1)
    if arg2 and 2 * balanceOf[address(stor24.field_0)].field_0 > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor24.field_0)].field_0 / arg2 != 2 * balanceOf[address(stor24.field_0)].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor42C6 - balanceOf[0].field_0:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor24.field_0)].field_0 / totalSupply - stor42C6 - balanceOf[0].field_0 > arg1)
}



}
