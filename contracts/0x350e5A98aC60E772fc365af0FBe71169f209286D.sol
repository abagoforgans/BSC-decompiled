contract main {




// =====================  Runtime code  =====================


const name = 'TWR'

const decimals = 2

const symbol = 'TWR'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function free(uint256 arg1) {
    if arg1 > balanceOf[msg.sender]:
        return 0
    idx = totalSupply + -arg1 + 3735928560
    while idx <= totalSupply + 3735928559:
        stor[idx] = 0
        idx = idx + 1
        continue 
    totalSupply -= arg1
    balanceOf[msg.sender] -= arg1
    return 1
}

function mint(uint256 arg1) {
    if arg1:
        require arg1 + 3735928559 >= 3735928560
        idx = totalSupply + 3735928560
        while idx <= arg1 + totalSupply + 3735928559:
            stor[idx] = 1
            idx = idx + 1
            continue 
        totalSupply += arg1
        balanceOf[msg.sender] += arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function freeFrom(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(arg1)]:
        return 0
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    idx = totalSupply + -arg2 + 3735928560
    while idx <= totalSupply + 3735928559:
        stor[idx] = 0
        idx = idx + 1
        continue 
    totalSupply -= arg2
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    return 1
}

function freeUpTo(uint256 arg1) {
    if arg1 <= balanceOf[msg.sender]:
        idx = totalSupply + -arg1 + 3735928560
        while idx <= totalSupply + 3735928559:
            stor[idx] = 0
            idx = idx + 1
            continue 
        totalSupply -= arg1
        balanceOf[msg.sender] -= arg1
        return arg1
    idx = totalSupply + -balanceOf[msg.sender] + 3735928560
    while idx <= totalSupply + 3735928559:
        stor[idx] = 0
        idx = idx + 1
        continue 
    totalSupply -= balanceOf[msg.sender]
    balanceOf[msg.sender] = 0
    return balanceOf[msg.sender]
}

function freeFromUpTo(address arg1, uint256 arg2) {
    if arg2 <= balanceOf[address(arg1)]:
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            idx = totalSupply + -arg2 + 3735928560
            while idx <= totalSupply + 3735928559:
                stor[idx] = 0
                idx = idx + 1
                continue 
            totalSupply -= arg2
            balanceOf[address(arg1)] -= arg2
            allowance[address(arg1)][address(msg.sender)] -= arg2
            return arg2
    else:
        if balanceOf[address(arg1)] <= allowance[address(arg1)][address(msg.sender)]:
            idx = totalSupply + -balanceOf[address(arg1)] + 3735928560
            while idx <= totalSupply + 3735928559:
                stor[idx] = 0
                idx = idx + 1
                continue 
            totalSupply -= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = 0
            allowance[address(arg1)][address(msg.sender)] -= balanceOf[address(arg1)]
            return balanceOf[address(arg1)]
    idx = totalSupply + -allowance[address(arg1)][address(msg.sender)] + 3735928560
    while idx <= totalSupply + 3735928559:
        stor[idx] = 0
        idx = idx + 1
        continue 
    totalSupply -= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = 0
    return allowance[address(arg1)][address(msg.sender)]
}



}
