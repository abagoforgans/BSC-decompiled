contract main {




// =====================  Runtime code  =====================


const name = 'Ygarden.Finance'

const decimals = 18

const symbol = ''


address _owner;
uint256 _presaleBurnTotal;
uint256 _stakingBurnTotal;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() payable {
    return _totalSupply
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _stakingBurnTotal() payable {
    return _stakingBurnTotal
}

function owner() payable {
    return _owner
}

function _owner() payable {
    return _owner
}

function _balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function _presaleBurnTotal() payable {
    return _presaleBurnTotal
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
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
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        require arg1 <= balanceOf[msg.sender]
    else:
        require arg1 + _presaleBurnTotal >= _presaleBurnTotal
        require arg1 + _presaleBurnTotal <= 0
        require arg1 <= balanceOf[msg.sender]
        require arg1 + _presaleBurnTotal >= _presaleBurnTotal
        _presaleBurnTotal += arg1
    require arg1 <= balanceOf[stor0]
    balanceOf[stor0] -= arg1
    require arg1 + balanceOf[0] >= balanceOf[0]
    balanceOf[0] += arg1
    emit Transfer(arg1, _owner, 0);
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    return 1
}



}
