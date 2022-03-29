contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2; offset 8
uint256 totalSupply;
mapping of uint256 balanceOf;
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'ERR_NOT_OWNER'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit 0xfeddf252: arg2, 0, arg1
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[this.address]:
        revert with 0, 'ERR_INSUFFICIENT_BAL'
    require balanceOf[this.address] - arg1 <= balanceOf[this.address]
    balanceOf[this.address] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
    emit 0xfeddf252: arg1, this.address, 0
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ERR_INSUFFICIENT_BAL'
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'ERR_BTOKEN_BAD_CALLER'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ERR_INSUFFICIENT_BAL'
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if arg1 != msg.sender:
        if allowance[address(arg1)][msg.sender] != -1:
            require allowance[address(arg1)][msg.sender] - arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), msg.sender, arg2);
    return 1
}



}
