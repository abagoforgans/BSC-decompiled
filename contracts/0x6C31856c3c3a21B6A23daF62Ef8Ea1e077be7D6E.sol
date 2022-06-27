contract main {




// =====================  Runtime code  =====================


const name = 'AlfaCoin', 0

const decimals = 9

const symbol = 'ACN', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WBNBAddress;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 stor13;
uint256 stor14;
address founderWalletAddress;
uint256 stor16; offset 2
uint256 stor16;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address pairAddress;
uint8 swapEnabled; offset 160
uint128 stor20; offset 160
address routerAddress;
uint256 swapThreshold;
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

function WBNB() {
    return WBNBAddress
}

function founderWallet() {
    return founderWalletAddress
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return stor13
    return stor14
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
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
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

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
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
    stor20 = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function sub_40d5a0d3(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    uint256(stor16.field_0) = arg2
    require stor14 < Mask(254, 0, stor16.field_2)
}

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13 = arg1
    uint256(stor16.field_0) = arg2
    require stor13 < Mask(254, 0, stor16.field_2)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 2 > -1 / arg2:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] < 2 * arg2 / 100:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= 2 * arg2 / 100
    if totalSupply < 2 * arg2 / 100:
        revert with 'NH{q', 17
    totalSupply -= 2 * arg2 / 100
    if arg2 < 2 * arg2 / 100:
        revert with 'NH{q', 17
    if stor22:
        if arg2 - (2 * arg2 / 100) > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 / 100)
        if balanceOf[address(arg1)] > -arg2 + (2 * arg2 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100)
    else:
        if arg2 - (2 * arg2 / 100) > _maxTxAmount:
            if not stor11[address(msg.sender)]:
                revert with 0, 'TX Limit Exceeded'
        if arg2 < 2 * arg2 / 100:
            revert with 'NH{q', 17
        if arg2 - (2 * arg2 / 100) > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 / 100)
        if arg2 < 2 * arg2 / 100:
            revert with 'NH{q', 17
        if stor10[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 + (2 * arg2 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100)
            emit Transfer((arg2 - (2 * arg2 / 100)), msg.sender, arg1);
        else:
            if arg1 != pairAddress:
                if arg2 - (2 * arg2 / 100) and stor13 > -1 / arg2 - (2 * arg2 / 100):
                    revert with 'NH{q', 17
                if not uint256(stor16.field_0):
                    revert with 'NH{q', 18
                if balanceOf[stor15] > -((arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor15] += (arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0)
                emit Transfer(((arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0)), msg.sender, founderWalletAddress);
                if arg2 - (2 * arg2 / 100) < (arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 + (2 * arg2 / 100) + ((arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100) - ((arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0))
                emit Transfer((arg2 - (2 * arg2 / 100) - ((arg2 * stor13) - (2 * arg2 / 100 * stor13) / uint256(stor16.field_0))), msg.sender, arg1);
            else:
                if arg2 - (2 * arg2 / 100) and stor14 > -1 / arg2 - (2 * arg2 / 100):
                    revert with 'NH{q', 17
                if not uint256(stor16.field_0):
                    revert with 'NH{q', 18
                if balanceOf[stor15] > -((arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor15] += (arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0)
                emit Transfer(((arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0)), msg.sender, founderWalletAddress);
                if arg2 - (2 * arg2 / 100) < (arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 + (2 * arg2 / 100) + ((arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100) - ((arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0))
                emit Transfer((arg2 - (2 * arg2 / 100) - ((arg2 * stor14) - (2 * arg2 / 100 * stor14) / uint256(stor16.field_0))), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] != totalSupply:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient Allowance', 0
        allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 and 2 > -1 / arg3:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] < 2 * arg3 / 100:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= 2 * arg3 / 100
    if totalSupply < 2 * arg3 / 100:
        revert with 'NH{q', 17
    totalSupply -= 2 * arg3 / 100
    if arg3 < 2 * arg3 / 100:
        revert with 'NH{q', 17
    if stor22:
        if arg3 - (2 * arg3 / 100) > balanceOf[address(arg1)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 / 100)
        if balanceOf[address(arg2)] > -arg3 + (2 * arg3 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100)
    else:
        if arg3 - (2 * arg3 / 100) > _maxTxAmount:
            if not stor11[address(arg1)]:
                revert with 0, 'TX Limit Exceeded'
        if arg3 < 2 * arg3 / 100:
            revert with 'NH{q', 17
        if arg3 - (2 * arg3 / 100) > balanceOf[address(arg1)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 / 100)
        if arg3 < 2 * arg3 / 100:
            revert with 'NH{q', 17
        if stor10[address(arg1)]:
            if balanceOf[address(arg2)] > -arg3 + (2 * arg3 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100)
            emit Transfer((arg3 - (2 * arg3 / 100)), arg1, arg2);
        else:
            if arg2 != pairAddress:
                if arg3 - (2 * arg3 / 100) and stor13 > -1 / arg3 - (2 * arg3 / 100):
                    revert with 'NH{q', 17
                if not uint256(stor16.field_0):
                    revert with 'NH{q', 18
                if balanceOf[stor15] > -((arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor15] += (arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0)
                emit Transfer(((arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0)), arg1, founderWalletAddress);
                if arg3 - (2 * arg3 / 100) < (arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (2 * arg3 / 100) + ((arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100) - ((arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0))
                emit Transfer((arg3 - (2 * arg3 / 100) - ((arg3 * stor13) - (2 * arg3 / 100 * stor13) / uint256(stor16.field_0))), arg1, arg2);
            else:
                if arg3 - (2 * arg3 / 100) and stor14 > -1 / arg3 - (2 * arg3 / 100):
                    revert with 'NH{q', 17
                if not uint256(stor16.field_0):
                    revert with 'NH{q', 18
                if balanceOf[stor15] > -((arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor15] += (arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0)
                emit Transfer(((arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0)), arg1, founderWalletAddress);
                if arg3 - (2 * arg3 / 100) < (arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (2 * arg3 / 100) + ((arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0)) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100) - ((arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0))
                emit Transfer((arg3 - (2 * arg3 / 100) - ((arg3 * stor14) - (2 * arg3 / 100 * stor14) / uint256(stor16.field_0))), arg1, arg2);
    return 1
}



}
