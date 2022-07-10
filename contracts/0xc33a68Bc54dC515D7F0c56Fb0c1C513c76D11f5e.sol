contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'TestDegen4', 0

const decimals = 18

const symbol = 'TDegen4', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
uint256 stor11; offset 1
uint256 liquidityFee;
uint256 marketingFee;
uint256 devFee;
uint256 totalFee;
uint256 launchedAt;
address stor16;
address stor17;
address stor18;
address routerAddress;
uint8 tradingEnabled; offset 160
uint8 limitsInEffect; offset 168
uint128 stor20; offset 168
uint128 stor20; offset 160
address pairAddress;
uint256 stor21;
mapping of uint256 stor22;
mapping of uint256 stor23;
uint256 sub_1d7b1fb4;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor27;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1d7b1fb4(?) {
    return sub_1d7b1fb4
}

function totalFee() {
    return totalFee
}

function limitsInEffect() {
    return bool(limitsInEffect)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function DevFee() {
    return devFee
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

function _maxWallet() {
    return _maxWallet
}

function getOwner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
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

function enableTrading() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor20.field_160) = 1
    if tradingEnabled:
        if not launchedAt:
            launchedAt = block.number
}

function sub_679ca6e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(88, 0, stor20.field_168) = Mask(88, 0, bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    stor9[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function Sweep() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
}

function sub_b74e3b11(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cooldown timer cannot exceed 5 minutes'
    sub_1d7b1fb4 = arg1
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    devFee = arg2
    marketingFee = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3
    if totalFee > 10:
        revert with 0, 'Fees cannot be more than 10%'
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor20.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if balanceOf[address(stor20.field_0)] and 2 > -1 / balanceOf[address(stor20.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor20.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor20.field_0)] / balanceOf[address(stor20.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor20.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor20.field_0)] / arg1 != 2 * balanceOf[address(stor20.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor20.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function airdropToWallets(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 98
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = floor32(arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1.length != arg2.length:
        revert with 0, 'Arrays must be the same length'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _81 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _83 = mem[(32 * idx) + floor32(arg1.length) + 129]
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 20
        mem[_84 + 32] = 'Insufficient Balance'
        mem[32] = 7
        if _83 > balanceOf[address(msg.sender)]:
            _86 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_86 + idx + 68] = mem[_84 + idx + 32]
                idx = idx + 32
                continue 
            mem[_86 + 88] = 0
            revert with memory
              from mem[64]
               len _86 + -mem[64] + 100
        if balanceOf[address(msg.sender)] < _83:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= _83
        if balanceOf[address(_81)] > -_83 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(_81)] + _83 < balanceOf[address(_81)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_81)
        mem[32] = 7
        balanceOf[address(_81)] += _83
        mem[mem[64]] = _83
        emit Transfer(_83, msg.sender, address(_81));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor27:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor1[address(msg.sender)]:
            if not stor1[address(arg1)]:
                if not tradingEnabled:
                    revert with 0, 'Trading not enabled'
        if pairAddress != msg.sender:
            if limitsInEffect:
                if stor23[tx.origin] > -sub_1d7b1fb4 - 1:
                    revert with 'NH{q', 17
                if block.timestamp < stor23[tx.origin] + sub_1d7b1fb4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'please wait for cooldown period to end'
                stor23[tx.origin] = block.timestamp
        else:
            if limitsInEffect:
                if block.gasprice > stor21:
                    revert with 0, 'Gas price exceeds limit.'
                if stor22[tx.origin] == block.number:
                    revert with 0, 'Too many TX in block'
                stor22[tx.origin] = block.number
                if stor23[tx.origin] > -sub_1d7b1fb4 - 1:
                    revert with 'NH{q', 17
                if block.timestamp < stor23[tx.origin] + sub_1d7b1fb4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'please wait for cooldown period to end'
                stor23[tx.origin] = block.timestamp
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 > _maxWallet:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount.'
        if pairAddress != msg.sender:
            if not stor27:
                if swapEnabled:
                    if balanceOf[address(this.address)] >= swapThreshold:
                        stor27 = 1
                        if not swapThreshold:
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            if 0 / totalFee / 2 > swapThreshold:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if swapThreshold < 0 / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = stor2
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = swapThreshold - (0 / totalFee / 2)
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if stor11 > totalFee:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalFee < stor11:
                                revert with 'NH{q', 17
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            call stor17 with:
                               value 0 / totalFee - stor11 wei
                                 gas 30000 wei
                            call stor18 with:
                               value 0 / totalFee - stor11 wei
                                 gas 30000 wei
                            if 0 / totalFee / 2 > 0:
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - stor11 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, stor16, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor11), 0 / totalFee / 2);
                        else:
                            if swapThreshold and liquidityFee > -1 / swapThreshold:
                                revert with 'NH{q', 17
                            if not swapThreshold:
                                revert with 'NH{q', 18
                            if swapThreshold * liquidityFee / swapThreshold != liquidityFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            if swapThreshold * liquidityFee / totalFee / 2 > swapThreshold:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = stor2
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if stor11 > totalFee:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalFee < stor11:
                                revert with 'NH{q', 17
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            if totalFee - stor11 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee - stor11:
                                revert with 'NH{q', 18
                            call stor17 with:
                               value 0 / totalFee - stor11 wei
                                 gas 30000 wei
                            call stor18 with:
                               value 0 / totalFee - stor11 wei
                                 gas 30000 wei
                            if swapThreshold * liquidityFee / totalFee / 2 > 0:
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - stor11 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, stor16, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor11), swapThreshold * liquidityFee / totalFee / 2);
                        stor27 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if stor9[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor9[address(arg1)]:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if balanceOf[address(this.address)] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, this.address);
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and totalFee > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * totalFee / arg2 != totalFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balanceOf[address(this.address)] > -(arg2 * totalFee / 100) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] + (arg2 * totalFee / 100) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += arg2 * totalFee / 100
                    emit Transfer((arg2 * totalFee / 100), msg.sender, this.address);
                    if arg2 * totalFee / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * totalFee / 100:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / 100) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / 100)
                    emit Transfer((arg2 - (arg2 * totalFee / 100)), msg.sender, arg1);
    return 1
}



}
