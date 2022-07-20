contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 decimals;
address uniswapV2RouterAddress; offset 8
uint8 stor7; offset 160
uint8 _liquidityFee; offset 168
uint128 stor7; offset 160
address uniswapV2PairAddress;

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function _liquidityFee() payable {
    return _liquidityFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fd1bc2ca(?) payable {
    return bool(uint8(stor7.field_160))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLiquidityFee(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function sub_40fb4de4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, bool(arg1))
}

function _getTValues(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < arg1 * arg2 / 100:
        revert with 'NH{q', 17
    return (arg1 - (arg1 * arg2 / 100))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    else:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        else:
            if arg1 != uniswapV2PairAddress:
                if msg.sender == uniswapV2PairAddress:
                    if msg.sender == owner:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            else:
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                    else:
                        if arg1 == owner:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                        else:
                            if arg2 and _liquidityFee > -1 / arg2:
                                revert with 'NH{q', 17
                            else:
                                if arg2 < arg2 * _liquidityFee / 100:
                                    revert with 'NH{q', 17
                                else:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                            emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                            return 1
                else:
                    if msg.sender == owner:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            else:
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                    else:
                        if arg1 == owner:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                        else:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
            else:
                if uint8(stor7.field_160):
                    if arg1 == uniswapV2PairAddress:
                        if msg.sender == uniswapV2PairAddress:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                        else:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                        else:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                else:
                    require owner == msg.sender
                    if arg1 == uniswapV2PairAddress:
                        if msg.sender == uniswapV2PairAddress:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                        else:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if arg2 and _liquidityFee > -1 / arg2:
                                        revert with 'NH{q', 17
                                    else:
                                        if arg2 < arg2 * _liquidityFee / 100:
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * _liquidityFee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _liquidityFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
                                                    return 1
                        else:
                            if msg.sender == owner:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                else:
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] == -1:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        else:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            else:
                if arg2 != uniswapV2PairAddress:
                    if arg1 == uniswapV2PairAddress:
                        if arg1 == owner:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                        else:
                            if arg2 == owner:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                            else:
                                if arg3 and _liquidityFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                else:
                                    if arg3 < arg3 * _liquidityFee / 100:
                                        revert with 'NH{q', 17
                                    else:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                return 1
                    else:
                        if arg1 == owner:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                        else:
                            if arg2 == owner:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                            else:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                else:
                    if uint8(stor7.field_160):
                        if arg2 == uniswapV2PairAddress:
                            if arg1 == uniswapV2PairAddress:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                        else:
                            if arg1 == uniswapV2PairAddress:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                    else:
                        require owner == arg1
                        if arg2 == uniswapV2PairAddress:
                            if arg1 == uniswapV2PairAddress:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                        else:
                            if arg1 == uniswapV2PairAddress:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        else:
                                            if arg3 < arg3 * _liquidityFee / 100:
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                        return 1
                            else:
                                if arg1 == owner:
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                else:
                                    if arg2 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
    else:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        else:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            else:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    else:
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        else:
                            if arg2 != uniswapV2PairAddress:
                                if arg1 == uniswapV2PairAddress:
                                    if arg1 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg2 == owner:
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
                                        else:
                                            if arg3 and _liquidityFee > -1 / arg3:
                                                revert with 'NH{q', 17
                                            else:
                                                if arg3 < arg3 * _liquidityFee / 100:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                            emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                            return 1
                                else:
                                    if arg1 == owner:
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                    else:
                                        if arg2 == owner:
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
                                        else:
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
                            else:
                                if uint8(stor7.field_160):
                                    if arg2 == uniswapV2PairAddress:
                                        if arg1 == uniswapV2PairAddress:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                        else:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                    else:
                                        if arg1 == uniswapV2PairAddress:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                        else:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                else:
                                    require owner == arg1
                                    if arg2 == uniswapV2PairAddress:
                                        if arg1 == uniswapV2PairAddress:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                        else:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                    else:
                                        if arg1 == uniswapV2PairAddress:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if arg3 and _liquidityFee > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if arg3 < arg3 * _liquidityFee / 100:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if balanceOf[address(arg1)] < arg3:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3
                                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _liquidityFee / 100) - 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _liquidityFee / 100)
                                                                    emit Transfer((arg3 - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                                                    return 1
                                        else:
                                            if arg1 == owner:
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
                                            else:
                                                if arg2 == owner:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
                                                else:
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg2)] += arg3
                                                            emit Transfer(arg3, arg1, arg2);
                                                            return 1
}



}
