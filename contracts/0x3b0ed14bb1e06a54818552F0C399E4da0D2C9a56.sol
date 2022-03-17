contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function addBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20: ONLY_OWNER'
    stor7[address(arg1)] = 1
    return 1
}

function removeBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20: ONLY_OWNER'
    stor7[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20: ONLY_OWNER'
    if balanceOf[stor0] + arg1 < balanceOf[stor0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor0] += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor7[address(msg.sender)]:
        revert with 0, 'ERC20: FROM_IN_BLACKLIST'
    if stor7[address(arg1)]:
        revert with 0, 'ERC20: TO_IN_BLACKLIST'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: INSUFFICIENT_BALANCE'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if not arg1:
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'CRP: INSUFFICIENT_ALLOWANCE'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor7[address(arg1)]:
        revert with 0, 'ERC20: FROM_IN_BLACKLIST'
    if stor7[address(arg2)]:
        revert with 0, 'ERC20: TO_IN_BLACKLIST'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERC20: INSUFFICIENT_BALANCE'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if not arg2:
        if arg3 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
