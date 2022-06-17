contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'WendyRogers'

const decimals = 9

const symbol = 'WR'


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 totalFee;
uint256 totalSellFee;
uint256 stor14;
address marketingFeeReceiverAddress;
address routerAddress;
address pairAddress;
uint256 launchedAt;
address stor19;
uint256 stor20;
uint8 swapEnabled;
uint256 swapThreshold;
uint256 sub_4558d365;
uint8 stor24;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function sub_4558d365(?) {
    return sub_4558d365
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    marketingFeeReceiverAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor20 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    sub_4558d365 = arg3
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor19)
    call stor19.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor9[address(arg1)] = uint8(arg2)
    require ext_code.size(stor19)
    if not arg2:
        call stor19.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor19.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor17]:
        if not arg1:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    else:
        if balanceOf[stor17]:
            if 2 * balanceOf[stor17] / balanceOf[stor17] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
            else:
                if arg1:
                    if arg1 * 2 * balanceOf[stor17] / arg1 != 2 * balanceOf[stor17]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg1 * 2 * balanceOf[stor17] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor17]:
        if not arg2:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    else:
        if balanceOf[stor17]:
            if 2 * balanceOf[stor17] / balanceOf[stor17] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
            else:
                if arg2:
                    if arg2 * 2 * balanceOf[stor17] / arg2 != 2 * balanceOf[stor17]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg2 * 2 * balanceOf[stor17] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor24:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == pairAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance'
            balanceOf[address(msg.sender)] -= arg2
            if stor8[address(msg.sender)]:
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                require ext_code.size(stor19)
                if not stor9[address(msg.sender)]:
                    call stor19.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor9[address(arg1)]:
                    call stor19.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call stor19.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor20
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == pairAddress:
                    if not arg2:
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor14
                        if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / stor14
                        emit Transfer((0 / stor14), msg.sender, this.address);
                        if 0 / stor14 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                        require ext_code.size(stor19)
                        if not stor9[address(msg.sender)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor9[address(arg1)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor19.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor20
                        emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * totalFee / arg2 != totalFee:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor14 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor14
                        if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * totalFee / stor14
                        emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                        if arg2 * totalFee / stor14 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                        require ext_code.size(stor19)
                        if not stor9[address(msg.sender)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor9[address(arg1)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor19.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor20
                        emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                else:
                    if arg1 != pairAddress:
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, this.address);
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        require ext_code.size(stor19)
                        if not stor9[address(msg.sender)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor9[address(arg1)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor19.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor20
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if stor14 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor14
                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / stor14
                            emit Transfer((0 / stor14), msg.sender, this.address);
                            if 0 / stor14 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 * totalSellFee / arg2 != totalSellFee:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor14 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor14
                            if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                            emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                            if arg2 * totalSellFee / stor14 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
        else:
            if stor24:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance'
                balanceOf[address(msg.sender)] -= arg2
                if stor8[address(msg.sender)]:
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(stor19)
                    if not stor9[address(msg.sender)]:
                        call stor19.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor9[address(arg1)]:
                        call stor19.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor19.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor20
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == pairAddress:
                        if not arg2:
                            if stor14 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor14
                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / stor14
                            emit Transfer((0 / stor14), msg.sender, this.address);
                            if 0 / stor14 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 * totalFee / arg2 != totalFee:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor14 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor14
                            if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += arg2 * totalFee / stor14
                            emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                            if arg2 * totalFee / stor14 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                    else:
                        if arg1 != pairAddress:
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, this.address);
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if stor14 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor14
                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += 0 / stor14
                                emit Transfer((0 / stor14), msg.sender, this.address);
                                if 0 / stor14 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                require ext_code.size(stor19)
                                if not stor9[address(msg.sender)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor9[address(arg1)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor19.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor20
                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * totalSellFee / arg2 != totalSellFee:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if stor14 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor14
                                if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                if arg2 * totalSellFee / stor14 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                require ext_code.size(stor19)
                                if not stor9[address(msg.sender)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor9[address(arg1)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor19.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor20
                                emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
            else:
                if not swapEnabled:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if stor8[address(msg.sender)]:
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        require ext_code.size(stor19)
                        if not stor9[address(msg.sender)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor9[address(arg1)]:
                            call stor19.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor19.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor20
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == pairAddress:
                            if not arg2:
                                if stor14 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor14
                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += 0 / stor14
                                emit Transfer((0 / stor14), msg.sender, this.address);
                                if 0 / stor14 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                require ext_code.size(stor19)
                                if not stor9[address(msg.sender)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor9[address(arg1)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor19.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor20
                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * totalFee / arg2 != totalFee:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if stor14 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor14
                                if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                if arg2 * totalFee / stor14 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                require ext_code.size(stor19)
                                if not stor9[address(msg.sender)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor9[address(arg1)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor19.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor20
                                emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                        else:
                            if arg1 != pairAddress:
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                require ext_code.size(stor19)
                                if not stor9[address(msg.sender)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor9[address(arg1)]:
                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor19.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor20
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor14
                                    if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += 0 / stor14
                                    emit Transfer((0 / stor14), msg.sender, this.address);
                                    if 0 / stor14 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * totalSellFee / arg2 != totalSellFee:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor14
                                    if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                    emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                    if arg2 * totalSellFee / stor14 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
                else:
                    if balanceOf[address(this.address)] < swapThreshold:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if stor8[address(msg.sender)]:
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            require ext_code.size(stor19)
                            if not stor9[address(msg.sender)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor9[address(arg1)]:
                                call stor19.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor19.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor20
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == pairAddress:
                                if not arg2:
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor14
                                    if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += 0 / stor14
                                    emit Transfer((0 / stor14), msg.sender, this.address);
                                    if 0 / stor14 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * totalFee / arg2 != totalFee:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if stor14 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor14
                                    if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                    emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                    if arg2 * totalFee / stor14 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                            else:
                                if arg1 != pairAddress:
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor14
                                        if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += 0 / stor14
                                        emit Transfer((0 / stor14), msg.sender, this.address);
                                        if 0 / stor14 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                        require ext_code.size(stor19)
                                        if not stor9[address(msg.sender)]:
                                            call stor19.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor9[address(arg1)]:
                                            call stor19.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor19.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor20
                                        emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                    else:
                                        require arg2
                                        if arg2 * totalSellFee / arg2 != totalSellFee:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if stor14 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor14
                                        if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                        emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                        if arg2 * totalSellFee / stor14 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                        require ext_code.size(stor19)
                                        if not stor9[address(msg.sender)]:
                                            call stor19.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor9[address(arg1)]:
                                            call stor19.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor19.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor20
                                        emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
                    else:
                        stor24 = 1
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args swapThreshold, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalFee <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalFee
                        if totalFee <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalFee
                        require ext_code.size(stor19)
                        call stor19.deposit() with:
                           value 0 / totalFee wei
                             gas gas_remaining wei
                        call marketingFeeReceiverAddress with:
                           value 0 / totalFee wei
                             gas 30000 wei
                        stor24 = 0
                        if not return_data.size:
                            if balanceOf[address(this.address)] <= sub_4558d365:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor8[address(msg.sender)]:
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == pairAddress:
                                        if not arg2:
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += 0 / stor14
                                            emit Transfer((0 / stor14), msg.sender, this.address);
                                            if 0 / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * totalFee / arg2 != totalFee:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                            emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                            if arg2 * totalFee / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                                    else:
                                        if arg1 != pairAddress:
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += 0 / stor14
                                                emit Transfer((0 / stor14), msg.sender, this.address);
                                                if 0 / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * totalSellFee / arg2 != totalSellFee:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                                emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                                if arg2 * totalSellFee / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
                            else:
                                if balanceOf[address(this.address)] - sub_4558d365 > balanceOf[address(this.address)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(this.address)] = sub_4558d365
                                if balanceOf[stor3] + balanceOf[address(this.address)] - sub_4558d365 < balanceOf[stor3]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor3] = balanceOf[stor3] + balanceOf[address(this.address)] - sub_4558d365
                                emit Transfer((balanceOf[address(this.address)] - sub_4558d365), this.address, stor3);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor8[address(msg.sender)]:
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == pairAddress:
                                        if not arg2:
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += 0 / stor14
                                            emit Transfer((0 / stor14), msg.sender, this.address);
                                            if 0 / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * totalFee / arg2 != totalFee:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                            emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                            if arg2 * totalFee / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                                    else:
                                        if arg1 != pairAddress:
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += 0 / stor14
                                                emit Transfer((0 / stor14), msg.sender, this.address);
                                                if 0 / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * totalSellFee / arg2 != totalSellFee:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                                emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                                if arg2 * totalSellFee / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
                        else:
                            if balanceOf[address(this.address)] <= sub_4558d365:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor8[address(msg.sender)]:
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == pairAddress:
                                        if not arg2:
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += 0 / stor14
                                            emit Transfer((0 / stor14), msg.sender, this.address);
                                            if 0 / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * totalFee / arg2 != totalFee:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 550 len 31]
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                            emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                            if arg2 * totalFee / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                                    else:
                                        if arg1 != pairAddress:
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += 0 / stor14
                                                emit Transfer((0 / stor14), msg.sender, this.address);
                                                if 0 / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * totalSellFee / arg2 != totalSellFee:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 550 len 31]
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                                emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                                if arg2 * totalSellFee / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
                            else:
                                if balanceOf[address(this.address)] - sub_4558d365 > balanceOf[address(this.address)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(this.address)] = sub_4558d365
                                if balanceOf[stor3] + balanceOf[address(this.address)] - sub_4558d365 < balanceOf[stor3]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor3] = balanceOf[stor3] + balanceOf[address(this.address)] - sub_4558d365
                                emit Transfer((balanceOf[address(this.address)] - sub_4558d365), this.address, stor3);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if stor8[address(msg.sender)]:
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(stor19)
                                    if not stor9[address(msg.sender)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor9[address(arg1)]:
                                        call stor19.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor19.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor20
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == pairAddress:
                                        if not arg2:
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += 0 / stor14
                                            emit Transfer((0 / stor14), msg.sender, this.address);
                                            if 0 / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * totalFee / arg2 != totalFee:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 614 len 31]
                                            if stor14 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor14
                                            if balanceOf[address(this.address)] + (arg2 * totalFee / stor14) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * totalFee / stor14
                                            emit Transfer((arg2 * totalFee / stor14), msg.sender, this.address);
                                            if arg2 * totalFee / stor14 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / stor14)
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer((arg2 - (arg2 * totalFee / stor14)), msg.sender, arg1);
                                    else:
                                        if arg1 != pairAddress:
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(stor19)
                                            if not stor9[address(msg.sender)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor9[address(arg1)]:
                                                call stor19.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor19.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor20
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (0 / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += 0 / stor14
                                                emit Transfer((0 / stor14), msg.sender, this.address);
                                                if 0 / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (0 / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (0 / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (0 / stor14)), msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * totalSellFee / arg2 != totalSellFee:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 614 len 31]
                                                if stor14 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require stor14
                                                if balanceOf[address(this.address)] + (arg2 * totalSellFee / stor14) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * totalSellFee / stor14
                                                emit Transfer((arg2 * totalSellFee / stor14), msg.sender, this.address);
                                                if arg2 * totalSellFee / stor14 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalSellFee / stor14)
                                                require ext_code.size(stor19)
                                                if not stor9[address(msg.sender)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor9[address(arg1)]:
                                                    call stor19.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor19.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor20
                                                emit Transfer((arg2 - (arg2 * totalSellFee / stor14)), msg.sender, arg1);
    return 1
}



}
