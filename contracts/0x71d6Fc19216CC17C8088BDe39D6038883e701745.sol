contract main {




// =====================  Runtime code  =====================


const name = 'Bounce Token'

const decimals = 18

const symbol = 'BOT'


uint256 _totalSupply;
uint256 sub_276dbb83;
address owner;
uint256 stor3;
uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function sub_276dbb83(?) {
    return sub_276dbb83
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function resume() {
    require msg.sender == owner
    require stor4
    stor4 = 0
    emit Resume(msg.sender);
    return 1
}

function pause() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit Pause(msg.sender);
    return 1
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

function sendTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require sub_276dbb83 + arg2 >= sub_276dbb83
    sub_276dbb83 += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_36935c29(?) {
    require msg.sender == owner
    idx = 0
    while idx < arg1:
        mem[0] = address(idx + stor3)
        mem[32] = 5
        balanceOf[address(idx + stor3)] = 1
        idx = idx + 1
        continue 
    require stor3 + arg1 >= stor3
    stor3 += arg1
    require sub_276dbb83 + arg1 >= sub_276dbb83
    sub_276dbb83 += arg1
    require arg1 <= balanceOf[stor2]
    balanceOf[stor2] -= arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor4
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}



}
