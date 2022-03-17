contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor7;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function _assert(bool arg1) {
    require not arg1
}

function transferOwnerShip(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    require arg1 + arg2 >= arg2
    return (arg1 + arg2)
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    require arg1 == (arg2 * arg1 / arg2) + (arg1 % arg2)
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg1 * arg2)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Burn(address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require arg2
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
