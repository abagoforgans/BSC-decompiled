contract main {




// =====================  Runtime code  =====================


mapping of uint256 _balances;
mapping of uint256 _allowances;
uint256 _totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function _allowances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[arg1][arg2]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    _allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    _balances[address(msg.sender)] -= arg2
    _balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if _balances[address(arg1)] < arg3:
        return 0
    if _allowances[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    _balances[address(arg2)] += arg3
    _balances[address(arg1)] -= arg3
    _allowances[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
