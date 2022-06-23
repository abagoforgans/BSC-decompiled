contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Baby Halo Inu', 0

const decimals = 9

const symbol = 'BHI', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 stor14;
address stor15;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor17; offset 160
address pairAddress;
uint256 swapThreshold;
address stor19;
uint256 stor20; offset 1
uint256 stor20;
uint256 stor21;
uint8 stor22;

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

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
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

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15 = arg1
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        if stor21 and 1 > -1 / stor21:
            revert with 'NH{q', 17
    return stor21
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= totalSupply / 1000
    _maxWalletSize = arg1
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
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(96, 0, stor17.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor15 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor15 with:
       value ext_call.return_data[0] wei
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
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor17.field_0)]:
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
    if balanceOf[address(stor17.field_0)] and 2 > -1 / balanceOf[address(stor17.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor17.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor17.field_0)] / balanceOf[address(stor17.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor17.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor17.field_0)] / arg1 != 2 * balanceOf[address(stor17.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[address(stor17.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor17.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if balanceOf[address(stor17.field_0)] and 2 > -1 / balanceOf[address(stor17.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor17.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor17.field_0)] / balanceOf[address(stor17.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor17.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor17.field_0)] / arg2 != 2 * balanceOf[address(stor17.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[address(stor17.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor22:
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
        if arg2 > _maxTxAmount:
            if not stor11[address(msg.sender)]:
                revert with 0, 'TX Limit Exceeded'
        if arg1 != pairAddress:
            if arg1 != stor3:
                if not stor11[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the bag size.'
        if pairAddress != msg.sender:
            if not stor22:
                if swapEnabled:
                    if balanceOf[address(this.address)] >= swapThreshold:
                        stor22 = 1
                        if not balanceOf[address(this.address)]:
                            if stor21 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21:
                                revert with 'NH{q', 18
                            if 0 / stor21 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(this.address)] < 0 / stor21 / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = stor2
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)] - (0 / stor21 / 2)
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
                                args balanceOf[address(this.address)] - (0 / stor21 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if uint255(stor20.field_1) > stor21:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor21 < uint255(stor20.field_1):
                                revert with 'NH{q', 17
                            if stor21 - uint255(stor20.field_1) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 18
                            if stor21 - uint255(stor20.field_1) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 18
                            if 0 < 0 / stor21 - uint255(stor20.field_1) / 2:
                                revert with 'NH{q', 17
                            if -0 / stor21 - uint255(stor20.field_1) / 2 < 0 / stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 17
                            call stor15 with:
                               value 0 / stor21 - uint255(stor20.field_1) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected ETH transfer'
                            call stor19 with:
                               value -(0 / stor21 - uint255(stor20.field_1) / 2) - (0 / stor21 - uint255(stor20.field_1)) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected ETH transfer'
                            if 0 / stor21 / 2 > 0:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor21 - uint255(stor20.field_1) / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / stor21), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / stor21 - uint255(stor20.field_1)), 0 / stor21 / 2);
                        else:
                            if balanceOf[address(this.address)] and uint256(stor20.field_0) > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not balanceOf[address(this.address)]:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] * uint256(stor20.field_0) / balanceOf[address(this.address)] != uint256(stor20.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if stor21 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = stor2
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2)
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
                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if uint255(stor20.field_1) > stor21:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor21 < uint255(stor20.field_1):
                                revert with 'NH{q', 17
                            if stor21 - uint255(stor20.field_1) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 18
                            if stor21 - uint255(stor20.field_1) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 18
                            if 0 < 0 / stor21 - uint255(stor20.field_1) / 2:
                                revert with 'NH{q', 17
                            if -0 / stor21 - uint255(stor20.field_1) / 2 < 0 / stor21 - uint255(stor20.field_1):
                                revert with 'NH{q', 17
                            call stor15 with:
                               value 0 / stor21 - uint255(stor20.field_1) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected ETH transfer'
                            call stor19 with:
                               value -(0 / stor21 - uint255(stor20.field_1) / 2) - (0 / stor21 - uint255(stor20.field_1)) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected ETH transfer'
                            if balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2 > 0:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor21 - uint255(stor20.field_1) / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / stor21 - uint255(stor20.field_1)), balanceOf[address(this.address)] * uint256(stor20.field_0) / stor21 / 2);
                        stor22 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if stor10[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg1 == pairAddress:
                if stor21 and 1 > -1 / stor21:
                    revert with 'NH{q', 17
            if not arg2:
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] > -(0 / stor14) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / stor14
                emit Transfer((0 / stor14), msg.sender, this.address);
                if 0 / stor14 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0 / stor14:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 + (0 / stor14) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
            else:
                if arg2 and stor21 > -1 / arg2:
                    revert with 'NH{q', 17
                if not arg2:
                    revert with 'NH{q', 18
                if arg2 * stor21 / arg2 != stor21:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor14 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor14:
                    revert with 'NH{q', 18
                if balanceOf[address(this.address)] > -(arg2 * stor21 / stor14) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(this.address)] + (arg2 * stor21 / stor14) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += arg2 * stor21 / stor14
                emit Transfer((arg2 * stor21 / stor14), msg.sender, this.address);
                if arg2 * stor21 / stor14 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * stor21 / stor14:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor21 / stor14) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (arg2 * stor21 / stor14) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor21 / stor14)
                emit Transfer((arg2 - (arg2 * stor21 / stor14)), msg.sender, arg1);
    return 1
}



}
