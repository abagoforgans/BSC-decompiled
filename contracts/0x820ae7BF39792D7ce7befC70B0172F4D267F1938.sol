contract main {




// =====================  Runtime code  =====================


const name = 'Spite Token'

const decimals = 18

const symbol = 'SPITE'


address owner;
address treasuryAddress;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 transferableTokens;

function totalSupply() {
    return totalSupply
}

function treasury() {
    return treasuryAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return transferableTokens[address(arg1)]
}

function transferableTokens(address arg1) {
    require calldata.size - 4 >= 32
    return transferableTokens[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1 != owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != msg.sender
    require allowance[address(msg.sender)][address(arg1)] <= allowance[address(msg.sender)][address(arg1)] + arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg1 != msg.sender
    if allowance[address(msg.sender)][address(arg1)] > arg2:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    require arg1
    require arg1 != this.address
    require transferableTokens[address(msg.sender)] - arg2 <= transferableTokens[address(msg.sender)]
    require transferableTokens[address(arg1)] <= transferableTokens[address(arg1)] + arg2
    require arg2 <= transferableTokens[address(msg.sender)]
    transferableTokens[address(msg.sender)] -= arg2
    transferableTokens[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1
    require arg1 != this.address
    require arg2 != arg1
    require arg2
    require arg2 != this.address
    require arg3 <= transferableTokens[address(arg1)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    require transferableTokens[address(arg1)] - arg3 <= transferableTokens[address(arg1)]
    require transferableTokens[address(arg2)] <= transferableTokens[address(arg2)] + arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    transferableTokens[address(arg1)] -= arg3
    transferableTokens[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
