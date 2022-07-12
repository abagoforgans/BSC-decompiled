contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 stor5;
mapping of struct stor6;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() {
    return totalDividendsDistributed
}

function symbol() {
    return symbol[0 len symbol.length]
}

function withdrawnDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    return withdrawnDividendOf[address(arg1)].field_0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function distributeDividends() payable {
    require totalSupply > 0
    if msg.value:
        if not msg.value:
            require totalSupply
            if (0 / totalSupply) + stor5 < stor5:
                revert with 0, 'SafeMath: addition overflow'
            stor5 += 0 / totalSupply
        else:
            if msg.value << 128 / msg.value != 0x100000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require totalSupply
            if (msg.value << 128 / totalSupply) + stor5 < stor5:
                revert with 0, 'SafeMath: addition overflow'
            stor5 += msg.value << 128 / totalSupply
        emit DividendsDistributed(msg.value, msg.sender);
        if msg.value + totalDividendsDistributed < totalDividendsDistributed:
            revert with 0, 'SafeMath: addition overflow'
        totalDividendsDistributed += msg.value
}

function accumulativeDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor5:
        require stor6[address(arg1)].field_0 >= 0
        return stor6[address(arg1)].field_128
    if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require balanceOf[address(arg1)] * stor5 >= 0
    if stor6[address(arg1)].field_0 < 0:
        require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    else:
        if stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5:
            require stor6[address(arg1)].field_0 < 0
            require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) >= 0
    return (Mask(128, 128, stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5)) >> 128)
}

function dividendOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor5:
        require stor6[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor6[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor6[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require balanceOf[address(arg1)] * stor5 >= 0
    if stor6[address(arg1)].field_0 < 0:
        require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    else:
        if stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5:
            require stor6[address(arg1)].field_0 < 0
            require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5)) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor5:
        require stor6[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor6[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor6[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require balanceOf[address(arg1)] * stor5 >= 0
    if stor6[address(arg1)].field_0 < 0:
        require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    else:
        if stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5:
            require stor6[address(arg1)].field_0 < 0
            require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) < balanceOf[address(arg1)] * stor5
    require stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5) >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5)) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, stor6[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor5)) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawDividend() {
    if not stor5:
        require stor6[address(msg.sender)].field_0 >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > stor6[address(msg.sender)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor6[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
            if stor6[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = stor6[address(msg.sender)].field_128
            emit DividendWithdrawn((stor6[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            call msg.sender with:
               value stor6[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 wei
                 gas 3000 wei
            if not ext_call.success:
                if stor6[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor6[address(msg.sender)].field_128
    else:
        if balanceOf[address(msg.sender)] * stor5 / stor5 != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require balanceOf[address(msg.sender)] * stor5 >= 0
        if stor6[address(msg.sender)].field_0 < 0:
            require stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5) < balanceOf[address(msg.sender)] * stor5
        else:
            if stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5) < balanceOf[address(msg.sender)] * stor5:
                require stor6[address(msg.sender)].field_0 < 0
                require stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5) < balanceOf[address(msg.sender)] * stor5
        require stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5) >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
            if Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128
            withdrawnDividendOf[address(msg.sender)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            call msg.sender with:
               value (Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 wei
                 gas 3000 wei
            if not ext_call.success:
                if (Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, stor6[address(msg.sender)].field_0 + (balanceOf[address(msg.sender)] * stor5)) >> 128)
}



}
