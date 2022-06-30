contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Groundhog Day', 0

const totalSupply = 10^11

const decimals = 2

const symbol = '', 0

const DEAD = 57005


address owner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 _maxTxAmount;
uint256 sub_095d2d33;
uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14; offset 1
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
address stor19;
address stor20;
address autoLiquidityReceiverAddress;
uint256 stor22;
uint256 stor23;
uint256 deadBlocks;
uint256 launchBlock;
uint8 tradingOpen;
uint8 swapEnabled; offset 8
uint256 stor26; offset 8
uint256 swapThreshold;
uint256 sub_43203679;
address routerAddress; offset 8
address pairAddress;
uint256 stor6A96;

function swapThreshold() {
    return swapThreshold
}

function sub_095d2d33(?) {
    return sub_095d2d33
}

function sub_43203679(?) {
    return sub_43203679
}

function isLocked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function sub_937c9130(?) {
    return bool(stor6)
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function launchBlock() {
    return launchBlock
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

function deadBlocks() {
    return deadBlocks
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function sub_4618e81a(?) {
    return stor19, stor20
}

function sub_cd0b226d(?) {
    return stor15, stor16, stor17, stor18
}

function _fees() {
    return stor10, stor11, stor12, stor13, uint256(stor14.field_0)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_38fe9cd9(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    launchBlock = arg1
    deadBlocks = arg2
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function sub_8517c467(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor6 = uint8(bool(arg1))
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function sub_48738481(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
    stor23 = arg2
}

function setAutoLiquidityReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    autoLiquidityReceiverAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_fd1fb605(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor19 = address(arg1)
    stor20 = address(arg2)
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if owner == arg1:
        revert with 0, 'Cant remove owner'
    stor1[address(arg1)] = 0
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(arg2)
}

function setSwapSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = Mask(248, 0, arg1)
    swapThreshold = arg2
    sub_43203679 = arg3
}

function sub_f3633b11(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 0xafebff0bcb24aafef78f69a51539d748f2ff38ca3eda88b093e034f:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    sub_095d2d33 = 10^11 * arg1 / arg2
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
    if uint8(arg1):
        if not launchBlock:
            launchBlock = block.number
            deadBlocks = arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 0xafebff0bcb24aafef78f69a51539d748f2ff38ca3eda88b093e034f:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    _maxTxAmount = 10^11 * arg1 / arg2
}

function getCirculatingSupply() {
    if stor6A96 > 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^11 < stor6A96:
        revert with 0, 17
    if balanceOf[0] > -stor6A96 + 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -stor6A96 + 10^11 < balanceOf[0]:
        revert with 0, 17
    return (-stor6A96 + -balanceOf[0] + 10^11)
}

function sub_0e4f51f7(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10 = arg1
    stor11 = arg2
    stor12 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    stor13 = arg1 + arg2 + arg3
    if stor13 >= uint255(stor14.field_1):
        revert with 0, 'Fees cannot be more than 50%'
}

function clearETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cd9941c6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6A96 > 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^11 < stor6A96:
        revert with 0, 17
    if balanceOf[0] > -stor6A96 + 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -stor6A96 + 10^11 < balanceOf[0]:
        revert with 0, 17
    if not balanceOf[stor30]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not -stor6A96 + -balanceOf[0] + 10^11:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -stor6A96 + -balanceOf[0] + 10^11)
    if balanceOf[stor30] and 2 > -1 / balanceOf[stor30]:
        revert with 0, 17
    if not balanceOf[stor30]:
        revert with 0, 18
    if 2 * balanceOf[stor30] / balanceOf[stor30] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not -stor6A96 + -balanceOf[0] + 10^11:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -stor6A96 + -balanceOf[0] + 10^11)
    if arg1 and 2 * balanceOf[stor30] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor30] / arg1 != 2 * balanceOf[stor30]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -stor6A96 + -balanceOf[0] + 10^11:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor30] / -stor6A96 + -balanceOf[0] + 10^11)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor6A96 > 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^11 < stor6A96:
        revert with 0, 17
    if balanceOf[0] > -stor6A96 + 10^11:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -stor6A96 + 10^11 < balanceOf[0]:
        revert with 0, 17
    if not balanceOf[stor30]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not -stor6A96 + -balanceOf[0] + 10^11:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -stor6A96 + -balanceOf[0] + 10^11 > arg1)
    if balanceOf[stor30] and 2 > -1 / balanceOf[stor30]:
        revert with 0, 17
    if not balanceOf[stor30]:
        revert with 0, 18
    if 2 * balanceOf[stor30] / balanceOf[stor30] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not -stor6A96 + -balanceOf[0] + 10^11:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -stor6A96 + -balanceOf[0] + 10^11 > arg1)
    if arg2 and 2 * balanceOf[stor30] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor30] / arg2 != 2 * balanceOf[stor30]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -stor6A96 + -balanceOf[0] + 10^11:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor30] / -stor6A96 + -balanceOf[0] + 10^11 > arg1)
}

function airDrop(address arg1, address[] arg2, uint256[] arg3) payable {
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Length of addresses and tokens dont match'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = 20
        mem[_19 + 32] = 'Insufficient Balance' << 96
        mem[32] = 2
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _21 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _21 + 68] = mem[idx + _19 + 32]
                idx = idx + 32
                continue 
            mem[_21 + 88] = 0
            revert with memory
              from mem[64]
               len _21 + -mem[64] + 100
        if balanceOf[address(arg1)] < cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 2
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
