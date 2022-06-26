contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of address stor6;
address poolAddress;
address stor8;

function name() {
    return name[0 len name.length]
}

function pool() {
    return poolAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function initPool(address arg1) {
    if poolAddress:
        revert with 0, 'pool is exist!'
    poolAddress = arg1
}

function isWhiteList(address arg1) {
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function approve(address arg1, uint256 arg2) {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != msg.sender:
            idx = idx + 1
            continue 
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if arg2 > balanceOf[address(msg.sender)]:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 32
            while idx < 30:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if not arg2:
        if msg.sender == poolAddress:
            if poolAddress != arg1:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, msg.sender, arg1);
            else:
                if not arg2:
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if 95 * arg2 / arg2 != 95:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                    if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((95 * arg2 / 100), msg.sender, arg1);
        else:
            if poolAddress != arg1:
                if not arg2:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] = balanceOf[stor8]
                    emit Transfer(0, msg.sender, stor8);
                else:
                    if 5 * arg2 / arg2 != 5:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                    if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += 5 * arg2 / 100
                    emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, msg.sender, arg1);
            else:
                if not arg2:
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if 95 * arg2 / arg2 != 95:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                    if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((95 * arg2 / 100), msg.sender, arg1);
    else:
        if 95 * arg2 / arg2 != 95:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.sender == poolAddress:
            if poolAddress != arg1:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                emit Transfer((95 * arg2 / 100), msg.sender, arg1);
            else:
                if not arg2:
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if 95 * arg2 / arg2 != 95:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                    if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((95 * arg2 / 100), msg.sender, arg1);
        else:
            if poolAddress != arg1:
                if not arg2:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] = balanceOf[stor8]
                    emit Transfer(0, msg.sender, stor8);
                else:
                    if 5 * arg2 / arg2 != 5:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                    if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += 5 * arg2 / 100
                    emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                emit Transfer((95 * arg2 / 100), msg.sender, arg1);
            else:
                if not arg2:
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if 95 * arg2 / arg2 != 95:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, msg.sender, stor8);
                    else:
                        if 5 * arg2 / arg2 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                        if (5 * arg2 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 5 * arg2 / 100
                        emit Transfer((5 * arg2 / 100), msg.sender, stor8);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 95 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= 95 * arg2 / 100
                    if (95 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = (95 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((95 * arg2 / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 32
            while idx < 30:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[228] = 32
            idx = 32
            while idx < 30:
                mem[idx + 292] = mem[idx + 192]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
        return 1
    if not arg3:
        if poolAddress == arg1:
            if poolAddress != arg2:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2]
                emit Transfer(0, arg1, arg2);
                if 0 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
            else:
                if not arg3:
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    emit Transfer(0, arg1, arg2);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 85 * arg3 / arg3 != 85:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 85 * arg3 / 100
                    if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((85 * arg3 / 100), arg1, arg2);
                    if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
        else:
            if poolAddress != arg2:
                if not arg3:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] = balanceOf[stor8]
                    emit Transfer(0, arg1, stor8);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 15 * arg3 / arg3 != 15:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 15 * arg3 / 100
                    if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += 15 * arg3 / 100
                    emit Transfer((15 * arg3 / 100), arg1, stor8);
                    if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2]
                emit Transfer(0, arg1, arg2);
                if 0 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
            else:
                if not arg3:
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    emit Transfer(0, arg1, arg2);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 85 * arg3 / arg3 != 85:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 85 * arg3 / 100
                    if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((85 * arg3 / 100), arg1, arg2);
                    if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
    else:
        if 85 * arg3 / arg3 != 85:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if poolAddress == arg1:
            if poolAddress != arg2:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= 85 * arg3 / 100
                if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                emit Transfer((85 * arg3 / 100), arg1, arg2);
                if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
            else:
                if not arg3:
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    emit Transfer(0, arg1, arg2);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 85 * arg3 / arg3 != 85:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 85 * arg3 / 100
                    if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((85 * arg3 / 100), arg1, arg2);
                    if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
        else:
            if poolAddress != arg2:
                if not arg3:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] = balanceOf[stor8]
                    emit Transfer(0, arg1, stor8);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 15 * arg3 / arg3 != 15:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor8:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 15 * arg3 / 100
                    if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += 15 * arg3 / 100
                    emit Transfer((15 * arg3 / 100), arg1, stor8);
                    if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= 85 * arg3 / 100
                if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                emit Transfer((85 * arg3 / 100), arg1, arg2);
                if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
            else:
                if not arg3:
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    emit Transfer(0, arg1, arg2);
                    if 0 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                else:
                    if 85 * arg3 / arg3 != 85:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] = balanceOf[stor8]
                        emit Transfer(0, arg1, stor8);
                        if 0 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender]
                        emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
                    else:
                        if 15 * arg3 / arg3 != 15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor8:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 15 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(arg1)] -= 15 * arg3 / 100
                        if (15 * arg3 / 100) + balanceOf[stor8] < balanceOf[stor8]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor8] += 15 * arg3 / 100
                        emit Transfer((15 * arg3 / 100), arg1, stor8);
                        if 15 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)
                        emit Approval((allowance[address(arg1)][msg.sender] - (15 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 85 * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(arg1)] -= 85 * arg3 / 100
                    if (85 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = (85 * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((85 * arg3 / 100), arg1, arg2);
                    if 85 * arg3 / 100 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)
                    emit Approval((allowance[address(arg1)][msg.sender] - (85 * arg3 / 100)), arg1, msg.sender);
    return 1
}



}
