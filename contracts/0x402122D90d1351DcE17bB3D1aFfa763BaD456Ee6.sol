contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
mapping of uint256 allowance;
array of struct stor7;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    _totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferWithLock(address arg1, uint256 arg2, uint256 arg3) {
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough balance'
    if not arg1:
        revert with 0, 'Wrong Address'
    require block.timestamp + arg3 >= block.timestamp
    stor7[address(arg1)].field_0++
    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = block.timestamp + arg3
    stor7[address(arg1)][stor7[address(arg1)].field_0].field_256 = arg2
    stor8[address(arg1)] = 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough balance'
    if not arg1:
        revert with 0, 'Wrong Address'
    if stor7[address(msg.sender)].field_0 <= 0:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if stor5[address(msg.sender)]:
            require arg2 <= stor5[address(msg.sender)]
            stor5[address(msg.sender)] -= arg2
        require 0 <= arg2
        require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
        stor5[address(arg1)] += arg2
    else:
        if stor8[address(msg.sender)]:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            if stor5[address(msg.sender)]:
                require arg2 <= stor5[address(msg.sender)]
                stor5[address(msg.sender)] -= arg2
            require 0 <= arg2
            require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
            stor5[address(arg1)] += arg2
        else:
            if not stor5[address(msg.sender)]:
                idx = 0
                s = 0
                while idx < stor7[address(msg.sender)].field_0:
                    require idx < stor7[address(msg.sender)].field_0
                    if block.timestamp > stor7[address(msg.sender)][idx].field_0:
                        require idx < stor7[address(msg.sender)].field_0
                        _744 = sha3(sha3(address(msg.sender), 7))
                        require stor7[address(msg.sender)][idx].field_256 + s >= stor7[address(msg.sender)][idx].field_256
                        mem[0] = msg.sender
                        mem[32] = 7
                        idx = idx + 1
                        s = stor7[address(msg.sender)][idx].field_256 + s
                        continue 
                    require s + stor5[address(msg.sender)] >= s
                    if s + stor5[address(msg.sender)] >= arg2:
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2
                        if stor5[address(msg.sender)]:
                            require s <= arg2
                            require arg2 - s <= stor5[address(msg.sender)]
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] - arg2 + s
                        require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
                        stor5[address(arg1)] += arg2
                    else:
                        if s > 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This transaction is locked, try a lower amount'
                        if not s:
                            if stor5[address(msg.sender)] > 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This transaction is locked, try a lower amount'
                        if not s:
                            revert with 0, 'This transaction is locked'
                        require arg2 <= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] -= arg2
                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2
                        if stor5[address(msg.sender)]:
                            require arg2 <= stor5[address(msg.sender)]
                            stor5[address(msg.sender)] -= arg2
                        require s <= arg2
                        require stor5[address(arg1)] + arg2 - s >= stor5[address(arg1)]
                        stor5[address(arg1)] = stor5[address(arg1)] + arg2 - s
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                stor8[address(msg.sender)] = 1
                require (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0) + stor5[address(msg.sender)] >= stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                if (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0) + stor5[address(msg.sender)] < arg2:
                    if stor5[address(msg.sender)]:
                        require arg2 <= stor5[address(msg.sender)]
                        stor5[address(msg.sender)] -= arg2
                    require stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0 <= arg2
                    require stor5[address(arg1)] + arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0) >= stor5[address(arg1)]
                    stor5[address(arg1)] = stor5[address(arg1)] + arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0)
                else:
                    if stor5[address(msg.sender)]:
                        require stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0 <= arg2
                        require arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0) <= stor5[address(msg.sender)]
                        stor5[address(msg.sender)] = stor5[address(msg.sender)] - arg2 + (stor[(2 * stor7[address(msg.sender)].field_0) + _744 + 1] * stor7[address(msg.sender)].field_0)
                    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
                    stor5[address(arg1)] += arg2
            else:
                if stor5[address(msg.sender)] >= arg2:
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    require arg2 <= stor5[address(msg.sender)]
                    stor5[address(msg.sender)] -= arg2
                    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
                    stor5[address(arg1)] += arg2
                else:
                    idx = 0
                    s = 0
                    while idx < stor7[address(msg.sender)].field_0:
                        require idx < stor7[address(msg.sender)].field_0
                        if block.timestamp > stor7[address(msg.sender)][idx].field_0:
                            require idx < stor7[address(msg.sender)].field_0
                            _745 = sha3(sha3(address(msg.sender), 7))
                            require stor7[address(msg.sender)][idx].field_256 + s >= stor7[address(msg.sender)][idx].field_256
                            mem[0] = msg.sender
                            mem[32] = 7
                            idx = idx + 1
                            s = stor7[address(msg.sender)][idx].field_256 + s
                            continue 
                        require s + stor5[address(msg.sender)] >= s
                        if s + stor5[address(msg.sender)] >= arg2:
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += arg2
                            if stor5[address(msg.sender)]:
                                require s <= arg2
                                require arg2 - s <= stor5[address(msg.sender)]
                                stor5[address(msg.sender)] = stor5[address(msg.sender)] - arg2 + s
                            require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
                            stor5[address(arg1)] += arg2
                        else:
                            if s > 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This transaction is locked, try a lower amount'
                            if not s:
                                if stor5[address(msg.sender)] > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This transaction is locked, try a lower amount'
                            if not s:
                                revert with 0, 'This transaction is locked'
                            require arg2 <= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] -= arg2
                            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += arg2
                            if stor5[address(msg.sender)]:
                                require arg2 <= stor5[address(msg.sender)]
                                stor5[address(msg.sender)] -= arg2
                            require s <= arg2
                            require stor5[address(arg1)] + arg2 - s >= stor5[address(arg1)]
                            stor5[address(arg1)] = stor5[address(arg1)] + arg2 - s
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    stor8[address(msg.sender)] = 1
                    require (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0) + stor5[address(msg.sender)] >= stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0
                    require arg2 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg2
                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    if (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0) + stor5[address(msg.sender)] < arg2:
                        if stor5[address(msg.sender)]:
                            require arg2 <= stor5[address(msg.sender)]
                            stor5[address(msg.sender)] -= arg2
                        require stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0 <= arg2
                        require stor5[address(arg1)] + arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0) >= stor5[address(arg1)]
                        stor5[address(arg1)] = stor5[address(arg1)] + arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0)
                    else:
                        if stor5[address(msg.sender)]:
                            require stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0 <= arg2
                            require arg2 - (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0) <= stor5[address(msg.sender)]
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] - arg2 + (stor[(2 * stor7[address(msg.sender)].field_0) + _745 + 1] * stor7[address(msg.sender)].field_0)
                        require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
                        stor5[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
