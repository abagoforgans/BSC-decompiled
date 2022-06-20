contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferLiquidity(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'TESTING5', 0

const decimals = 9

const viewBalance = eth.balance(this.address)

const sub_850c0bd6(?) = 70, 30, 20, 0, 0, 120, 1000

const symbol = 'TESTING5', 0


address owner;
address stor1;
address stor2;
address stor3;
address pairAddress;
uint256 stor5;
uint256 stor6;
uint8 stor10;
uint256 stor10; offset 8
uint256 stor11;
uint256 stor12;
uint256 swapThreshold;
uint256 totalSupply;
uint256 _maxWalletSize;
uint8 stor16; offset 8
mapping of struct balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor19;
mapping of uint8 stor20;
uint8 stor21; offset 160
address routerAddress;
uint256 stor9784;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
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
    return balanceOf[stor4].field_0
}

function pair() {
    return pairAddress
}

function sub_c4330f1e(?) {
    return bool(uint8(stor10.field_0))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function sub_87bc1b1b(?) {
    return stor1, stor2, stor3
}

function sub_264a3e60(?) {
    return _maxWalletSize / 10^9, totalSupply / 10^9
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 120
}

function clearBalance() {
    call stor1 with:
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
    stor5 = arg1
    stor6 = arg2
}

function sub_d962cf58(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(bool(arg2))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor2 = arg2
    stor3 = arg3
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
    uint8(stor10.field_0) = uint8(arg1)
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg4)
    stor11 = arg2
    stor12 = arg3
    swapThreshold = arg2
}

function getCirculatingSupply() {
    if stor9784 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor9784:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor9784:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor9784 < balanceOf[0].field_0:
        revert with 0, 17
    return (totalSupply - stor9784 - balanceOf[0].field_0)
}

function launch() {
    if not stor16:
        stor21 = 1
        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 0, eth.balance(this.address), totalSupply, totalSupply, stor1, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        stor21 = 0
        stor16 = 1
}

function sub_e5be54bf(?) {
    if stor9784 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor9784:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor9784:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor9784 < balanceOf[0].field_0:
        revert with 0, 17
    if not totalSupply - stor9784 - balanceOf[0].field_0:
        if not balanceOf[stor4].field_1:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / balanceOf[stor4].field_1)
    if totalSupply - stor9784 - balanceOf[0].field_0 and 100 > -1 / totalSupply - stor9784 - balanceOf[0].field_0:
        revert with 0, 17
    if not totalSupply - stor9784 - balanceOf[0].field_0:
        revert with 0, 18
    if (100 * totalSupply) - (100 * stor9784) - (100 * balanceOf[0].field_0) / totalSupply - stor9784 - balanceOf[0].field_0 != 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balanceOf[stor4].field_1:
        revert with 0, 'SafeMath: division by zero', 0
    return ((100 * totalSupply) - (100 * stor9784) - (100 * balanceOf[0].field_0) / balanceOf[stor4].field_1)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9784 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor9784:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor9784:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor9784 < balanceOf[0].field_0:
        revert with 0, 17
    if not balanceOf[stor4].field_0:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor9784 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor9784 - balanceOf[0].field_0)
    if balanceOf[stor4].field_0 and 2 > -1 / balanceOf[stor4].field_0:
        revert with 0, 17
    if not balanceOf[stor4].field_0:
        revert with 0, 18
    if 2 * balanceOf[stor4].field_0 / balanceOf[stor4].field_0 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - stor9784 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor9784 - balanceOf[0].field_0)
    if arg1 and 2 * balanceOf[stor4].field_0 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor4].field_0 / arg1 != 2 * balanceOf[stor4].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor9784 - balanceOf[0].field_0:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor4].field_0 / totalSupply - stor9784 - balanceOf[0].field_0)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor9784 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor9784:
        revert with 0, 17
    if balanceOf[0].field_0 > totalSupply - stor9784:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - stor9784 < balanceOf[0].field_0:
        revert with 0, 17
    if not balanceOf[stor4].field_0:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - stor9784 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor9784 - balanceOf[0].field_0 > arg1)
    if balanceOf[stor4].field_0 and 2 > -1 / balanceOf[stor4].field_0:
        revert with 0, 17
    if not balanceOf[stor4].field_0:
        revert with 0, 18
    if 2 * balanceOf[stor4].field_0 / balanceOf[stor4].field_0 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - stor9784 - balanceOf[0].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - stor9784 - balanceOf[0].field_0 > arg1)
    if arg2 and 2 * balanceOf[stor4].field_0 > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor4].field_0 / arg2 != 2 * balanceOf[stor4].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - stor9784 - balanceOf[0].field_0:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor4].field_0 / totalSupply - stor9784 - balanceOf[0].field_0 > arg1)
}



}
