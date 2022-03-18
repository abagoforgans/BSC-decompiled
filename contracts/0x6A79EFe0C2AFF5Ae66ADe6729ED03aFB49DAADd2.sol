contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
uint256 stor4;
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 + stor4 >= arg2
    require 1 <= arg2 + stor4
    require stor4
    if not arg2 + stor4 - 1 / stor4:
        require 0 <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require 0 <= totalSupply
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, 0);
    else:
        require arg2 + stor4 - 1 / stor4
        require arg2 + stor4 - 1 / stor4 * stor4 / arg2 + stor4 - 1 / stor4 == stor4
        if not arg2 + stor4 - 1 / stor4 * stor4:
            require 0 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            require 0 <= totalSupply
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, 0);
        else:
            require arg2 + stor4 - 1 / stor4 * stor4
            require arg2 + stor4 - 1 / stor4 * stor4 * stor4 / arg2 + stor4 - 1 / stor4 * stor4 == stor4
            require arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 - (arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000)
            require arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000 <= totalSupply
            totalSupply -= arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000
            emit Transfer((arg2 - (arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000)), msg.sender, arg1);
            emit Transfer((arg2 + stor4 - 1 / stor4 * stor4 * stor4 / 10000), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + stor4 >= arg3
    require 1 <= arg3 + stor4
    require stor4
    if not arg3 + stor4 - 1 / stor4:
        require 0 <= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require 0 <= totalSupply
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, 0);
    else:
        require arg3 + stor4 - 1 / stor4
        require arg3 + stor4 - 1 / stor4 * stor4 / arg3 + stor4 - 1 / stor4 == stor4
        if not arg3 + stor4 - 1 / stor4 * stor4:
            require 0 <= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require 0 <= totalSupply
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, 0);
        else:
            require arg3 + stor4 - 1 / stor4 * stor4
            require arg3 + stor4 - 1 / stor4 * stor4 * stor4 / arg3 + stor4 - 1 / stor4 * stor4 == stor4
            require arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000 <= arg3
            require balanceOf[address(arg2)] + arg3 - (arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000) >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000)
            require arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000 <= totalSupply
            totalSupply -= arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000)), arg1, arg2);
            emit Transfer((arg3 + stor4 - 1 / stor4 * stor4 * stor4 / 10000), arg1, 0);
    return 1
}



}
