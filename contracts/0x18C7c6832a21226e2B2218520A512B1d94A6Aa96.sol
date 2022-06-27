contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


uint256 totalSupply;
uint256 txFee;
uint256 burnFee;
address feeAddress;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint256 balanceOf;
address owner;
address stor8;
uint256 unlockTime;
uint8 stor10;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor10)
}

function getUnlockTime() {
    return unlockTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function FeeAddress() {
    return feeAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function txFee() {
    return txFee
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function burnFee() {
    return burnFee
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor10
    stor10 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor10
    stor10 = 1
    emit Pause()
}

function waiveOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateFee(uint256 arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    txFee = arg1
    burnFee = arg2
    feeAddress = arg3
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function lock(uint256 arg1) {
    require msg.sender == owner
    stor8 = owner
    owner = 0
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) {
    require not stor10
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function blackListAddress(address arg1, bool arg2) {
    require not stor10
    require msg.sender == owner
    require bool(stor5[address(arg1)]) != arg2
    stor5[address(arg1)] = uint8(arg2)
    emit Blacklist(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor10
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor10
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function unlock() {
    if stor8 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is locked Time is not up'
    emit OwnershipTransferred(owner, stor8);
    owner = stor8
}

function transfer(address arg1, uint256 arg2) {
    require not stor10
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if txFee <= 0:
        if burnFee <= 0:
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == feeAddress:
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require burnFee
                require 100 / burnFee
                require arg2 / 100 / burnFee <= totalSupply
                totalSupply -= arg2 / 100 / burnFee
                emit Transfer((arg2 / 100 / burnFee), msg.sender, 0);
                require arg2 / 100 / burnFee <= arg2
                require balanceOf[address(arg1)] + arg2 - (arg2 / 100 / burnFee) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 / burnFee)
                emit Transfer((arg2 - (arg2 / 100 / burnFee)), msg.sender, arg1);
    else:
        if msg.sender == feeAddress:
            if burnFee <= 0:
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == feeAddress:
                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require burnFee
                    require 100 / burnFee
                    require arg2 / 100 / burnFee <= totalSupply
                    totalSupply -= arg2 / 100 / burnFee
                    emit Transfer((arg2 / 100 / burnFee), msg.sender, 0);
                    require arg2 / 100 / burnFee <= arg2
                    require balanceOf[address(arg1)] + arg2 - (arg2 / 100 / burnFee) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 / burnFee)
                    emit Transfer((arg2 - (arg2 / 100 / burnFee)), msg.sender, arg1);
        else:
            require txFee
            require 100 / txFee
            require balanceOf[stor3] + (arg2 / 100 / txFee) >= balanceOf[stor3]
            balanceOf[stor3] += arg2 / 100 / txFee
            emit Transfer((arg2 / 100 / txFee), msg.sender, feeAddress);
            require arg2 / 100 / txFee <= arg2
            if burnFee <= 0:
                require balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee)
                emit Transfer((arg2 - (arg2 / 100 / txFee)), msg.sender, arg1);
            else:
                if msg.sender == feeAddress:
                    require balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee)
                    emit Transfer((arg2 - (arg2 / 100 / txFee)), msg.sender, arg1);
                else:
                    require burnFee
                    require 100 / burnFee
                    require arg2 / 100 / burnFee <= totalSupply
                    totalSupply -= arg2 / 100 / burnFee
                    emit Transfer((arg2 / 100 / burnFee), msg.sender, 0);
                    require arg2 / 100 / burnFee <= arg2 - (arg2 / 100 / txFee)
                    require balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee) - (arg2 / 100 / burnFee) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 / txFee) - (arg2 / 100 / burnFee)
                    emit Transfer((arg2 - (arg2 / 100 / txFee) - (arg2 / 100 / burnFee)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor10
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require not stor5[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if txFee <= 0:
        if burnFee <= 0:
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg1 == feeAddress:
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require burnFee
                require 100 / burnFee
                require arg3 / 100 / burnFee <= totalSupply
                totalSupply -= arg3 / 100 / burnFee
                emit Transfer((arg3 / 100 / burnFee), arg1, 0);
                require arg3 / 100 / burnFee <= arg3
                require balanceOf[address(arg2)] + arg3 - (arg3 / 100 / burnFee) >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 / burnFee)
                require arg3 - (arg3 / 100 / burnFee) <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 100 / burnFee)
                emit Transfer((arg3 - (arg3 / 100 / burnFee)), arg1, arg2);
    else:
        if arg1 == feeAddress:
            if burnFee <= 0:
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg1 == feeAddress:
                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    require burnFee
                    require 100 / burnFee
                    require arg3 / 100 / burnFee <= totalSupply
                    totalSupply -= arg3 / 100 / burnFee
                    emit Transfer((arg3 / 100 / burnFee), arg1, 0);
                    require arg3 / 100 / burnFee <= arg3
                    require balanceOf[address(arg2)] + arg3 - (arg3 / 100 / burnFee) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 / burnFee)
                    require arg3 - (arg3 / 100 / burnFee) <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 100 / burnFee)
                    emit Transfer((arg3 - (arg3 / 100 / burnFee)), arg1, arg2);
        else:
            require txFee
            require 100 / txFee
            require balanceOf[stor3] + (arg3 / 100 / txFee) >= balanceOf[stor3]
            balanceOf[stor3] += arg3 / 100 / txFee
            emit Transfer((arg3 / 100 / txFee), arg1, feeAddress);
            require arg3 / 100 / txFee <= arg3
            if burnFee <= 0:
                require balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee) >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee)
                require arg3 - (arg3 / 100 / txFee) <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 100 / txFee)
                emit Transfer((arg3 - (arg3 / 100 / txFee)), arg1, arg2);
            else:
                if arg1 == feeAddress:
                    require balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee)
                    require arg3 - (arg3 / 100 / txFee) <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 100 / txFee)
                    emit Transfer((arg3 - (arg3 / 100 / txFee)), arg1, arg2);
                else:
                    require burnFee
                    require 100 / burnFee
                    require arg3 / 100 / burnFee <= totalSupply
                    totalSupply -= arg3 / 100 / burnFee
                    emit Transfer((arg3 / 100 / burnFee), arg1, 0);
                    require arg3 / 100 / burnFee <= arg3 - (arg3 / 100 / txFee)
                    require balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee) - (arg3 / 100 / burnFee) >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 / txFee) - (arg3 / 100 / burnFee)
                    require arg3 - (arg3 / 100 / txFee) - (arg3 / 100 / burnFee) <= allowance[address(arg1)][address(msg.sender)]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 100 / txFee) + (arg3 / 100 / burnFee)
                    emit Transfer((arg3 - (arg3 / 100 / txFee) - (arg3 / 100 / burnFee)), arg1, arg2);
    return 1
}



}
