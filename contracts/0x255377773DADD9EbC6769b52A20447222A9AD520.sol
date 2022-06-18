contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Hydrogen Sonata', 0

const decimals = 3

const symbol = 'SONATA', 0


address owner;
mapping of uint8 stor1;
address stor3;
uint256 totalSupply;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 totalFee;
uint256 stor12;
address autoLiquidityReceiverAddress;
address sub_d92420eeAddress;
address sub_6ec518b8Address;
uint256 stor16;
uint256 stor17;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor19; offset 160
address pairAddress;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_6ec518b8(?) {
    return sub_6ec518b8Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxWalletToken() {
    return _maxWalletToken
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_d92420ee(?) {
    return sub_d92420eeAddress
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

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = 0
    stor1[0] = 1
    emit OwnershipTransferred(0);
    return 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor3])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    stor8[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    stor16 = arg1
    stor17 = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    autoLiquidityReceiverAddress = arg1
    sub_6ec518b8Address = arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    Mask(96, 0, stor19.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxWalletToken = totalSupply * arg1 / 100
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    stor9 = arg1
    stor10 = arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2
    stor12 = arg3
}

function recover(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d92420eeAddress != msg.sender:
        require msg.sender == sub_6ec518b8Address
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call sub_d92420eeAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor19.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3])
    if balanceOf[address(stor19.field_0)] and 2 > -1 / balanceOf[address(stor19.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor19.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor19.field_0)] / balanceOf[address(stor19.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor3] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3])
    if arg1 and 2 * balanceOf[address(stor19.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor19.field_0)] / arg1 != 2 * balanceOf[address(stor19.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor19.field_0)] / totalSupply - balanceOf[stor3])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor19.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] > arg1)
    if balanceOf[address(stor19.field_0)] and 2 > -1 / balanceOf[address(stor19.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor19.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor19.field_0)] / balanceOf[address(stor19.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[stor3] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] > arg1)
    if arg2 and 2 * balanceOf[address(stor19.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor19.field_0)] / arg2 != 2 * balanceOf[address(stor19.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[address(stor19.field_0)] / totalSupply - balanceOf[stor3] > arg1)
}



}
