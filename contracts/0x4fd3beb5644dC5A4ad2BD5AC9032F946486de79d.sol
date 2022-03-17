contract main {




// =====================  Runtime code  =====================


const name = 'BebeToken'

const decimals = 9

const symbol = 'BEBE'


address _owner;
uint256 totalSupply;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
}

function owner() payable {
    return _owner
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor2
    return (stor3[address(arg1)] / stor2)
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

function rebase(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        stor2 = -4007913129639936 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if not arg2:
        if 0 > stor3[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(arg1)] < stor3[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * stor2 / arg2 != stor2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor2 > stor3[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3[address(msg.sender)] += -1 * arg2 * stor2
        if stor3[address(arg1)] + (arg2 * stor2) < stor3[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor3[address(arg1)] += arg2 * stor2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        if 0 > stor3[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor3[address(arg2)] < stor3[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg3
        if arg3 * stor2 / arg3 != stor2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg3 * stor2 > stor3[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3[address(arg1)] += -1 * arg3 * stor2
        if stor3[address(arg2)] + (arg3 * stor2) < stor3[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        stor3[address(arg2)] += arg3 * stor2
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
