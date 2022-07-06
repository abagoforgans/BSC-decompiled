contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 stor7;
uint256 sub_50a64fcd;
array of struct stor9;
array of struct stor10;
uint8 decimals;
address dexRouterAddress; offset 8
address sub_f242ab41Address;
address marketWalletAddress;
address burnAddress;
uint256 minTokenToSwap;
uint256 stor16;
uint256 stor17;
uint8 swapAndLiquifyEnabled;
uint8 fees; offset 8
uint256 stor18; offset 8
uint256 sub_dd073829;
uint256 sub_3326d7f2;
uint256 sub_cb5c474c;
uint256 sub_6d268267;
uint256 sub_00281dc1;
uint256 sub_e6c84dc6;
uint256 sub_775a1f6c;
uint256 sub_9d3feb9a;

function sub_00281dc1(?) {
    return sub_00281dc1
}

function dexRouter() {
    return dexRouterAddress
}

function totalSupply() {
    return totalSupply
}

function minTokenToSwap() {
    return minTokenToSwap
}

function decimals() {
    return decimals
}

function sub_3326d7f2(?) {
    return sub_3326d7f2
}

function Fees() {
    return bool(fees)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_50a64fcd(?) {
    return sub_50a64fcd
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function sub_6d268267(?) {
    return sub_6d268267
}

function burnAddress() {
    return burnAddress
}

function sub_775a1f6c(?) {
    return sub_775a1f6c
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function owner() {
    return owner
}

function sub_9d3feb9a(?) {
    return sub_9d3feb9a
}

function sub_cb5c474c(?) {
    return sub_cb5c474c
}

function sub_dd073829(?) {
    return sub_dd073829
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketWallet() {
    return marketWalletAddress
}

function sub_e6c84dc6(?) {
    return sub_e6c84dc6
}

function sub_f242ab41(?) {
    return sub_f242ab41Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMinTokenToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minTokenToSwap = arg1
}

function enableOrDisableFees(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = Mask(248, 0, arg1)
}

function sub_5249a820(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketWalletAddress = address(arg1)
}

function includeOrExcludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function sub_172fdc23(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapAndLiquifyEnabled = uint8(bool(arg1))
    emit SwapAndLiquifyEnabledUpdated(bool(arg1));
}

function setRoute(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dexRouterAddress = arg1
    sub_f242ab41Address = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBuyFeePercent(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dd073829 = arg1
    sub_3326d7f2 = arg2
    sub_cb5c474c = arg3
    sub_6d268267 = arg4
}

function setSellFeePercent(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00281dc1 = arg1
    sub_e6c84dc6 = arg2
    sub_775a1f6c = arg3
    sub_9d3feb9a = arg4
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xfe546f6b656e3a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Token: approve from the zero address'
    if not arg1:
        revert with 0, 'Token: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: Amount must be less than total reflections'
    if stor17 > stor7:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor7 < stor17:
        revert with 'NH{q', 17
    if stor16 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor16:
        revert with 'NH{q', 17
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 - stor17 >= stor7 / totalSupply:
        if totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - stor16:
            revert with 'NH{q', 18
        if stor7 - stor17 / totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7 - stor17 / totalSupply - stor16:
            revert with 'NH{q', 18
        return (arg1 / stor7 - stor17 / totalSupply - stor16)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor7 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)]:
        return stor2[address(arg1)]
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: Amount must be less than total reflections'
    if stor17 > stor7:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor7 < stor17:
        revert with 'NH{q', 17
    if stor16 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor16:
        revert with 'NH{q', 17
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 - stor17 >= stor7 / totalSupply:
        if totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - stor16:
            revert with 'NH{q', 18
        if stor7 - stor17 / totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7 - stor17 / totalSupply - stor16:
            revert with 'NH{q', 18
        return (stor1[address(arg1)] / stor7 - stor17 / totalSupply - stor16)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor7 / totalSupply)
}

function excludeFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: _Account is already excluded'
    if stor1[address(arg1)] > 0:
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: Amount must be less than total reflections'
        if stor17 > stor7:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor7 < stor17:
            revert with 'NH{q', 17
        if stor16 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < stor16:
            revert with 'NH{q', 17
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if stor7 - stor17 >= stor7 / totalSupply:
            if totalSupply - stor16 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - stor16:
                revert with 'NH{q', 18
            if stor7 - stor17 / totalSupply - stor16 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor7 - stor17 / totalSupply - stor16:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 - stor17 / totalSupply - stor16
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor7 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor5[address(arg1)] = 1
    if stor16 > -stor2[address(arg1)] - 1:
        revert with 'NH{q', 17
    if stor16 + stor2[address(arg1)] < stor16:
        revert with 0, 'SafeMath: addition overflow'
    stor16 += stor2[address(arg1)]
    if stor17 > -stor1[address(arg1)] - 1:
        revert with 'NH{q', 17
    if stor17 + stor1[address(arg1)] < stor17:
        revert with 0, 'SafeMath: addition overflow'
    stor17 += stor1[address(arg1)]
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token: _Account is already excluded'
    if stor2[address(arg1)] > stor16:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor16 < stor2[address(arg1)]:
        revert with 'NH{q', 17
    stor16 -= stor2[address(arg1)]
    if stor1[address(arg1)] > stor17:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor17 < stor1[address(arg1)]:
        revert with 'NH{q', 17
    stor17 -= stor1[address(arg1)]
    if stor17 > stor7:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor7 < stor17:
        revert with 'NH{q', 17
    if stor16 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor16:
        revert with 'NH{q', 17
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 - stor17 >= stor7 / totalSupply:
        if totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - stor16:
            revert with 'NH{q', 18
        if not stor2[address(arg1)]:
            stor1[address(arg1)] = 0
        else:
            if stor2[address(arg1)] and stor7 - stor17 / totalSupply - stor16 > -1 / stor2[address(arg1)]:
                revert with 'NH{q', 17
            if not stor2[address(arg1)]:
                revert with 'NH{q', 18
            if stor2[address(arg1)] * stor7 - stor17 / totalSupply - stor16 / stor2[address(arg1)] != stor7 - stor17 / totalSupply - stor16:
                revert with 0, 'SafeMath: multiplication overflow'
            stor1[address(arg1)] = stor2[address(arg1)] * stor7 - stor17 / totalSupply - stor16
    else:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not stor2[address(arg1)]:
            stor1[address(arg1)] = 0
        else:
            if stor2[address(arg1)] and stor7 / totalSupply > -1 / stor2[address(arg1)]:
                revert with 'NH{q', 17
            if not stor2[address(arg1)]:
                revert with 'NH{q', 18
            if stor2[address(arg1)] * stor7 / totalSupply / stor2[address(arg1)] != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            stor1[address(arg1)] = stor2[address(arg1)] * stor7 / totalSupply
    stor2[address(arg1)] = 0
    stor5[address(arg1)] = 0
}

function name() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function symbol() {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token: Excluded addresses cannot call this function'
    if stor17 > stor7:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor7 < stor17:
        revert with 'NH{q', 17
    if stor16 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor16:
        revert with 'NH{q', 17
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 - stor17 >= stor7 / totalSupply:
        if totalSupply - stor16 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - stor16:
            revert with 'NH{q', 18
        if not arg1:
            if 0 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if 0 > stor7:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7 < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and stor7 - stor17 / totalSupply - stor16 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 - stor17 / totalSupply - stor16 / arg1 != stor7 - stor17 / totalSupply - stor16:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor7 - stor17 / totalSupply - stor16 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < arg1 * stor7 - stor17 / totalSupply - stor16:
                revert with 'NH{q', 17
            stor1[address(msg.sender)] += -1 * arg1 * stor7 - stor17 / totalSupply - stor16
            if arg1 * stor7 - stor17 / totalSupply - stor16 > stor7:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7 < arg1 * stor7 - stor17 / totalSupply - stor16:
                revert with 'NH{q', 17
            stor7 += -1 * arg1 * stor7 - stor17 / totalSupply - stor16
    else:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if 0 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if 0 > stor7:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7 < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < arg1 * stor7 / totalSupply:
                revert with 'NH{q', 17
            stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
            if arg1 * stor7 / totalSupply > stor7:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7 < arg1 * stor7 / totalSupply:
                revert with 'NH{q', 17
            stor7 += -1 * arg1 * stor7 / totalSupply
    if sub_50a64fcd > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_50a64fcd + arg1 < sub_50a64fcd:
        revert with 0, 'SafeMath: addition overflow'
    sub_50a64fcd += arg1
}



}
