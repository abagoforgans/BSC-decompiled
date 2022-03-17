contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 _allowed;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _allowed(address arg1, address arg2) {
    return _allowed[arg1][arg2]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return _allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    _allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require totalSupply >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require _allowed[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= _allowed[address(arg1)][address(msg.sender)]
    _allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    if not arg1:
        require totalSupply >= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        emit Burn(arg2, msg.sender);
    else:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 >= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
