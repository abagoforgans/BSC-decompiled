contract main {




// =====================  Runtime code  =====================


const VERSION = 1


address owner;
uint8 decimals;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
}

function name() payable {
    revert 
}

function symbol() payable {
    revert 
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    revert 
}

function transferOwnership(address arg1) payable {
    revert 
}

function approve(address arg1, uint256 arg2) payable {
    revert 
}

function transfer(address arg1, uint256 arg2) payable {
    revert 
}

function allowance(address arg1, address arg2) payable {
    revert 
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    revert 
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    revert 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    revert 
}

function renounceOwnership() payable {
    require owner != msg.sender
    revert with 0, 'Ownable: caller is not the owner'
}



}
