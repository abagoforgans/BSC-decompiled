contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint8 stor3; offset 160
address masterAddress;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 stor6;
mapping of uint256 stor7;
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function initialDistributionFinished() payable {
    return bool(stor3)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function master() payable {
    return masterAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() payable {
    require msg.sender == owner
    stor3 = 1
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function enableTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function setMaster(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
    return 0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor6 > 0
    require stor6
    return (stor7[address(arg1)] / stor6)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3:
        if owner != msg.sender:
            require stor4[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3:
        if owner != msg.sender:
            require stor4[msg.sender]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3:
        if owner != msg.sender:
            require stor4[msg.sender]
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != this.address
    if not stor3:
        if owner != msg.sender:
            require stor4[msg.sender]
    if not arg2:
        require 0 <= stor7[msg.sender]
        require stor7[arg1] >= stor7[arg1]
        stor7[address(arg1)] = stor7[arg1]
    else:
        require stor6 * arg2 / arg2 == stor6
        require stor6 * arg2 <= stor7[msg.sender]
        stor7[msg.sender] += -1 * stor6 * arg2
        require (stor6 * arg2) + stor7[arg1] >= stor7[arg1]
        stor7[address(arg1)] = (stor6 * arg2) + stor7[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 != this.address
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg3:
        require 0 <= stor7[address(arg1)]
        require stor7[arg2] >= stor7[arg2]
        stor7[address(arg2)] = stor7[arg2]
    else:
        require stor6 * arg3 / arg3 == stor6
        require stor6 * arg3 <= stor7[address(arg1)]
        stor7[address(arg1)] += -1 * stor6 * arg3
        require (stor6 * arg3) + stor7[arg2] >= stor7[arg2]
        stor7[address(arg2)] = (stor6 * arg3) + stor7[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rebase(uint256 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if arg2:
        if arg2 >= 0:
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                require -arg2 <= totalSupply
                totalSupply += arg2
            else:
                require arg2 <= totalSupply
                totalSupply -= arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor6 = -7913129639936 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}



}
