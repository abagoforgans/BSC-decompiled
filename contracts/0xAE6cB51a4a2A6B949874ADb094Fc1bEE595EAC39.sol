contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function burn(uint256 arg1) {
    require msg.sender == stor0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
}

function init(uint256 arg1) {
    require msg.sender == stor0
    balanceOf[address(msg.sender)] += arg1
    totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3bfd4f61(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        mem[0] = msg.sender
        mem[32] = 5
        balanceOf[address(msg.sender)] -= arg2
        idx = idx + 1
        s = s + 1
        continue 
    return arg1.length
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg1
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += 94 * arg2 / 100
    balanceOf[0xe6a550913b17ed71b50df754f9bea24f99522774] += arg2 / 100
    balanceOf[0xe5b518eb6c744b2aa2dc83eb25c69ad7aa0ca60c] += 2 * arg2 / 100
    balanceOf[0xc318f7f2952639ba07499d125632edcd9a6e1564] += 3 * arg2 / 100
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b794db4f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        mem[0] = msg.sender
        mem[32] = 5
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = s + 1
        continue 
    return arg1.length
}



}
