contract main {




// =====================  Runtime code  =====================


address _owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalPooled;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function totalPooled() payable {
    return totalPooled
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return _owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function is_profitable() payable {
    if totalPooled > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalPooled > totalSupply - totalPooled)
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function numberRedeemed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if totalPooled > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - totalPooled <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply - totalPooled:
            return (0 / totalSupply - totalPooled)
    else:
        if arg1:
            if arg1 * totalPooled / arg1 != totalPooled:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalPooled > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply - totalPooled <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - totalPooled:
                return (arg1 * totalPooled / totalSupply - totalPooled)
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    if stor2[address(msg.sender)]:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 / 5 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2 / 5
        if totalPooled + (arg2 / 5) < totalPooled:
            revert with 0, 'SafeMath: addition overflow'
        totalPooled += arg2 / 5
        if arg2 / 5 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 - (arg2 / 5) > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 5)
        if balanceOf[address(arg1)] + arg2 - (arg2 / 5) < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 5)
        emit Transfer((arg2 - (arg2 / 5)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if stor2[address(msg.sender)]:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 / 5 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3 / 5
        if totalPooled + (arg3 / 5) < totalPooled:
            revert with 0, 'SafeMath: addition overflow'
        totalPooled += arg3 / 5
        if arg3 / 5 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][address(msg.sender)] -= arg3 / 5
        if arg3 / 5 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - (arg3 / 5) > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 5)
        if balanceOf[address(arg2)] + arg3 - (arg3 / 5) < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 5)
        if arg3 - (arg3 / 5) > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / 5)
        emit Transfer((arg3 - (arg3 / 5)), arg1, arg2);
    return 1
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalPooled > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalPooled <= totalSupply - totalPooled:
        revert with 0, 'Redeeming is not yet profitable.'
    require arg1 <= balanceOf[address(msg.sender)]
    require totalPooled >= arg1
    if not arg1:
        if totalPooled > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - totalPooled <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply - totalPooled
        require 0 / totalSupply - totalPooled < totalPooled
        if balanceOf[address(msg.sender)] + (0 / totalSupply - totalPooled) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / totalSupply - totalPooled
        emit Transfer((0 / totalSupply - totalPooled), _owner, msg.sender);
        if 0 / totalSupply - totalPooled > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow'
        totalPooled -= 0 / totalSupply - totalPooled
    else:
        require arg1
        if arg1 * totalPooled / arg1 != totalPooled:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalPooled > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply - totalPooled <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply - totalPooled
        require arg1 * totalPooled / totalSupply - totalPooled < totalPooled
        if balanceOf[address(msg.sender)] + (arg1 * totalPooled / totalSupply - totalPooled) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1 * totalPooled / totalSupply - totalPooled
        emit Transfer((arg1 * totalPooled / totalSupply - totalPooled), _owner, msg.sender);
        if arg1 * totalPooled / totalSupply - totalPooled > totalPooled:
            revert with 0, 'SafeMath: subtraction overflow'
        totalPooled -= arg1 * totalPooled / totalSupply - totalPooled
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    if balanceOf[0] + arg1 < balanceOf[0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[0] += arg1
    emit Transfer(arg1, msg.sender, 0);
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    return 1
}



}
