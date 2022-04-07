contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address monetaryPolicyAddress;
uint256 totalSupply;
uint256 stor203;
mapping of uint256 stor204;
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

function owner() payable {
    return owner
}

function monetaryPolicy() payable {
    return monetaryPolicyAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor203 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor203
    return (stor204[address(arg1)] / stor203)
}

function setMonetaryPolicy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    monetaryPolicyAddress = arg1
    emit LogMonetaryPolicyUpdated(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rebase(uint256 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if monetaryPolicyAddress != msg.sender:
        revert with 0, 'msg.sender != monetaryPolicy'
    if arg2:
        if arg2 >= 0:
            if totalSupply + arg2 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                if -arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply += arg2
            else:
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        stor203 = 0xfffffffffffffffffffffffffffffffffffffffffffb6af9671428effe800000 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    require 0xeb31973e0febf3e3d7058234a5ebbae1ab4b8c23 != msg.sender
    require arg1 != 0xeb31973e0febf3e3d7058234a5ebbae1ab4b8c23
    if not arg2:
        if 0 > stor204[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor204[address(arg1)] < stor204[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * stor203 / arg2 != stor203:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor203 > stor204[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor204[address(msg.sender)] += -1 * arg2 * stor203
        if stor204[address(arg1)] + (arg2 * stor203) < stor204[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor204[address(arg1)] += arg2 * stor203
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    require 0xeb31973e0febf3e3d7058234a5ebbae1ab4b8c23 != msg.sender
    require arg1 != 0xeb31973e0febf3e3d7058234a5ebbae1ab4b8c23
    require arg2 != 0xeb31973e0febf3e3d7058234a5ebbae1ab4b8c23
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        if 0 > stor204[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor204[address(arg2)] < stor204[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg3
        if arg3 * stor203 / arg3 != stor203:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg3 * stor203 > stor204[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor204[address(arg1)] += -1 * arg3 * stor203
        if stor204[address(arg2)] + (arg3 * stor203) < stor204[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        stor204[address(arg2)] += arg3 * stor203
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
