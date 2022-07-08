contract main {




// =====================  Runtime code  =====================


const initSupply = 10^14

const _dev = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address _walletAddress; offset 8
array of address stor6;
address stor7;
uint256 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _wallet() {
    return _walletAddress
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

function setMaxNum(uint256 arg1) {
    if stor7 != msg.sender:
        revert with 0, ' only owner can call!'
    stor8 = arg1
}

function setWallet(address arg1) {
    if stor7 != msg.sender:
        revert with 0, ' only owner can call!'
    _walletAddress = arg1
}

function setWhiteList(address arg1) {
    if stor7 != msg.sender:
        revert with 0, ' only owner can call!'
    stor6.length++
    stor6[stor6.length] = arg1
}

function isWhiteList(address arg1) {
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if arg1 != stor6[idx]:
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
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
        mem[128] = 'SafeMath: subtraction overflow'
        if arg2 <= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[164] = 32
        idx = 0
        while idx < 30:
            mem[idx + 228] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[228] = mem[230 len 30]
        revert with 0, 32, 30, mem[228]
    if not arg2:
        if arg2:
            require arg2
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if 0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, msg.sender, 0);
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not _walletAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[stor5] < balanceOf[stor5]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, msg.sender, _walletAddress);
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2
        if 5 * arg2 / arg2 != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2:
            require arg2
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if 5 * arg2 / 100 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > arg2 - (5 * arg2 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if 0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, msg.sender, 0);
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not _walletAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if 5 * arg2 / 100 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= 5 * arg2 / 100
        if balanceOf[stor5] + (5 * arg2 / 100) < balanceOf[stor5]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor5] += 5 * arg2 / 100
        emit Transfer((5 * arg2 / 100), msg.sender, _walletAddress);
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg2 - (5 * arg2 / 100) > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5 * arg2 / 100)
        if balanceOf[address(arg1)] + arg2 - (5 * arg2 / 100) < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5 * arg2 / 100)
        emit Transfer((arg2 - (5 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if arg1 != stor6[idx]:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        mem[128] = 'SafeMath: subtraction overflow'
        if arg3 > balanceOf[address(arg1)]:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 30:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[228] = mem[230 len 30]
            revert with 0, 32, 30, mem[228]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        mem[192] = 'SafeMath: subtraction overflow'
        if arg3 <= allowance[address(arg1)][address(msg.sender)]:
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[228] = 32
        idx = 0
        while idx < 30:
            mem[idx + 292] = mem[idx + 192]
            idx = idx + 32
            continue 
        mem[292] = mem[294 len 30]
        revert with 0, 32, 30, mem[292]
    if not arg3:
        if arg3:
            require arg3
            if 0 / arg3:
                revert with 0, 'SafeMath: multiplication overflow'
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: burn from the zero address'
        if 0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, arg1, 0);
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not _walletAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[stor5] < balanceOf[stor5]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, arg1, _walletAddress);
        if 0 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        require arg3
        if 5 * arg3 / arg3 != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg3:
            require arg3
            if 0 / arg3:
                revert with 0, 'SafeMath: multiplication overflow'
        if 5 * arg3 / 100 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > arg3 - (5 * arg3 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: burn from the zero address'
        if 0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, arg1, 0);
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not _walletAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if 5 * arg3 / 100 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= 5 * arg3 / 100
        if balanceOf[stor5] + (5 * arg3 / 100) < balanceOf[stor5]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor5] += 5 * arg3 / 100
        emit Transfer((5 * arg3 / 100), arg1, _walletAddress);
        if 5 * arg3 / 100 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= 5 * arg3 / 100
        emit Approval((allowance[address(arg1)][address(msg.sender)] - (5 * arg3 / 100)), arg1, msg.sender);
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg3 - (5 * arg3 / 100) > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (5 * arg3 / 100)
        if balanceOf[address(arg2)] + arg3 - (5 * arg3 / 100) < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (5 * arg3 / 100)
        emit Transfer((arg3 - (5 * arg3 / 100)), arg1, arg2);
        if arg3 - (5 * arg3 / 100) > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (5 * arg3 / 100)
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (5 * arg3 / 100)), arg1, msg.sender);
    return 1
}



}
