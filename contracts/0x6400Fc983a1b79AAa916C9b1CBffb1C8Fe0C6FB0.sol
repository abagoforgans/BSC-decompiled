contract main {




// =====================  Runtime code  =====================


const name = 'Royal Persian Carpet Token'

const decimals = 18

const symbol = ''

const initalSupply = 1000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 paused; offset 160
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;

function totalSupply() payable {
    return totalSupply
}

function minter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function freezed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    paused = 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    paused = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function freeze(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    stor4[address(arg1)] = 1
}

function unfreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    stor4[address(arg1)] = 0
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    stor5[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner can call'
    if not arg1:
        revert with 0, 'Owner should not be 0 address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cirlulation is paused!'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        revert with 0, 'Only minter can call'
    require arg1
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cirlulation is paused!'
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cirlulation is paused!'
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cirlulation is paused!'
    if stor4[msg.sender]:
        revert with 0, 'target user is freezed'
    if stor4[address(arg1)]:
        revert with 0, 'target user is freezed'
    require arg1
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
    emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'Cirlulation is paused!'
    if stor4[address(arg1)]:
        revert with 0, 'target user is freezed'
    if stor4[address(arg2)]:
        revert with 0, 'target user is freezed'
    require arg2
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
