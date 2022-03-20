contract main {




// =====================  Runtime code  =====================


const _rateBase = 10000

const _minGovernValueRate = 10

const _maxGovernValueRate = 2000


address governanceAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor4;
uint256 totalSupply;
mapping of uint256 _balances;
mapping of uint256 _allowances;
uint256 _maxSupply;
uint8 _openTransfer;
uint256 _burnRate;
uint256 _rewardRate;
uint256 _totalBurnToken;
uint256 _totalRewardToken;
address _rewardPoolAddress;
address _burnPoolAddress;

function _allowances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowances[arg1][arg2]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function _maxSupply() {
    return _maxSupply
}

function _burnPool() {
    return _burnPoolAddress
}

function _totalBurnToken() {
    return _totalBurnToken
}

function decimals() {
    return decimals
}

function _minters(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _totalRewardToken() {
    return _totalRewardToken
}

function governance() {
    return governanceAddress
}

function _rewardRate() {
    return _rewardRate
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function _burnRate() {
    return _burnRate
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _openTransfer() {
    return bool(_openTransfer)
}

function _rewardPool() {
    return _rewardPoolAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableOpenTransfer() {
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _openTransfer = 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor4[address(arg1)] = 1
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor4[address(arg1)] = 0
}

function setRewardPool(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _rewardPoolAddress = arg1
    emit eveRewardPool(arg1);
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(governanceAddress, arg1);
    governanceAddress = arg1
}

function setRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if 2000 < arg1:
        revert with 0, 'invalid burn rate'
    if arg1 < 10:
        revert with 0, 'invalid burn rate'
    if 2000 < arg2:
        revert with 0, 'invalid reward rate'
    if arg2 < 10:
        revert with 0, 'invalid reward rate'
    _burnRate = arg1
    _rewardRate = arg2
    emit eveSetRate(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
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
    _allowances[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if not stor4[msg.sender]:
        revert with 0, '!minter'
    if _totalBurnToken + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + _totalBurnToken + totalSupply > _maxSupply:
        revert with 0, 'supply is max!'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + _balances[address(arg1)] < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
    emit 0x77ddf252: arg2, 0, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > _allowances[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    _allowances[address(arg1)][msg.sender] -= arg3
    if not _openTransfer:
        if governanceAddress != arg1:
            revert with 0, 'transfer closed'
    if not arg1:
        revert with 0, 32, 37, 0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
    if not arg3:
        if not arg3:
            if arg3 > _balances[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            _balances[address(arg1)] -= arg3
            if arg3 + _balances[arg2] < _balances[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg2)] = arg3 + _balances[arg2]
            emit 0x77ddf252: arg3, arg1, arg2
        else:
            if _rewardRate * arg3 / arg3 != _rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not _rewardRate * arg3 / 10000:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if arg3 + _balances[arg2] < _balances[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = arg3 + _balances[arg2]
                emit 0x77ddf252: arg3, arg1, arg2
            else:
                if (_rewardRate * arg3 / 10000) + _balances[stor14] < _balances[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[stor14] += _rewardRate * arg3 / 10000
                if _rewardRate * arg3 / 10000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (_rewardRate * arg3 / 10000) + _totalRewardToken < _totalRewardToken:
                    revert with 0, 'SafeMath: addition overflow'
                _totalRewardToken += _rewardRate * arg3 / 10000
                emit 0x77ddf252: (_rewardRate * arg3 / 10000), arg1, _rewardPoolAddress
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if arg3 - (_rewardRate * arg3 / 10000) + _balances[arg2] < _balances[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = arg3 - (_rewardRate * arg3 / 10000) + _balances[arg2]
                emit 0x77ddf252: (arg3 - (_rewardRate * arg3 / 10000)), arg1, arg2
    else:
        if _burnRate * arg3 / arg3 != _burnRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not _burnRate * arg3 / 10000:
            if not arg3:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if arg3 + _balances[arg2] < _balances[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = arg3 + _balances[arg2]
                emit 0x77ddf252: arg3, arg1, arg2
            else:
                if _rewardRate * arg3 / arg3 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not _rewardRate * arg3 / 10000:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if arg3 + _balances[arg2] < _balances[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = arg3 + _balances[arg2]
                    emit 0x77ddf252: arg3, arg1, arg2
                else:
                    if (_rewardRate * arg3 / 10000) + _balances[stor14] < _balances[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor14] += _rewardRate * arg3 / 10000
                    if _rewardRate * arg3 / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (_rewardRate * arg3 / 10000) + _totalRewardToken < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += _rewardRate * arg3 / 10000
                    emit 0x77ddf252: (_rewardRate * arg3 / 10000), arg1, _rewardPoolAddress
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if arg3 - (_rewardRate * arg3 / 10000) + _balances[arg2] < _balances[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = arg3 - (_rewardRate * arg3 / 10000) + _balances[arg2]
                    emit 0x77ddf252: (arg3 - (_rewardRate * arg3 / 10000)), arg1, arg2
        else:
            if (_burnRate * arg3 / 10000) + _balances[stor15] < _balances[stor15]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[stor15] += _burnRate * arg3 / 10000
            if _burnRate * arg3 / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= _burnRate * arg3 / 10000
            if _burnRate * arg3 / 10000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_burnRate * arg3 / 10000) + _totalBurnToken < _totalBurnToken:
                revert with 0, 'SafeMath: addition overflow'
            _totalBurnToken += _burnRate * arg3 / 10000
            emit 0x77ddf252: (_burnRate * arg3 / 10000), arg1, _burnPoolAddress
            if not arg3:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if arg3 - (_burnRate * arg3 / 10000) + _balances[arg2] < _balances[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = arg3 - (_burnRate * arg3 / 10000) + _balances[arg2]
                emit 0x77ddf252: (arg3 - (_burnRate * arg3 / 10000)), arg1, arg2
            else:
                if _rewardRate * arg3 / arg3 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not _rewardRate * arg3 / 10000:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if arg3 - (_burnRate * arg3 / 10000) + _balances[arg2] < _balances[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = arg3 - (_burnRate * arg3 / 10000) + _balances[arg2]
                    emit 0x77ddf252: (arg3 - (_burnRate * arg3 / 10000)), arg1, arg2
                else:
                    if (_rewardRate * arg3 / 10000) + _balances[stor14] < _balances[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor14] += _rewardRate * arg3 / 10000
                    if _rewardRate * arg3 / 10000 > arg3 - (_burnRate * arg3 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (_rewardRate * arg3 / 10000) + _totalRewardToken < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += _rewardRate * arg3 / 10000
                    emit 0x77ddf252: (_rewardRate * arg3 / 10000), arg1, _rewardPoolAddress
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if arg3 - (_burnRate * arg3 / 10000) - (_rewardRate * arg3 / 10000) + _balances[arg2] < _balances[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = arg3 - (_burnRate * arg3 / 10000) - (_rewardRate * arg3 / 10000) + _balances[arg2]
                    emit 0x77ddf252: (arg3 - (_burnRate * arg3 / 10000) - (_rewardRate * arg3 / 10000)), arg1, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not _openTransfer:
        if governanceAddress != msg.sender:
            revert with 0, 'transfer closed'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg2:
        if not arg2:
            if arg2 > _balances[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            _balances[address(msg.sender)] -= arg2
            if arg2 + _balances[arg1] < _balances[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg1)] = arg2 + _balances[arg1]
            emit 0x77ddf252: arg2, msg.sender, arg1
        else:
            if _rewardRate * arg2 / arg2 != _rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not _rewardRate * arg2 / 10000:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if arg2 + _balances[arg1] < _balances[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = arg2 + _balances[arg1]
                emit 0x77ddf252: arg2, msg.sender, arg1
            else:
                if (_rewardRate * arg2 / 10000) + _balances[stor14] < _balances[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[stor14] += _rewardRate * arg2 / 10000
                if _rewardRate * arg2 / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (_rewardRate * arg2 / 10000) + _totalRewardToken < _totalRewardToken:
                    revert with 0, 'SafeMath: addition overflow'
                _totalRewardToken += _rewardRate * arg2 / 10000
                emit 0x77ddf252: (_rewardRate * arg2 / 10000), msg.sender, _rewardPoolAddress
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if arg2 - (_rewardRate * arg2 / 10000) + _balances[arg1] < _balances[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = arg2 - (_rewardRate * arg2 / 10000) + _balances[arg1]
                emit 0x77ddf252: (arg2 - (_rewardRate * arg2 / 10000)), msg.sender, arg1
    else:
        if _burnRate * arg2 / arg2 != _burnRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not _burnRate * arg2 / 10000:
            if not arg2:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if arg2 + _balances[arg1] < _balances[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = arg2 + _balances[arg1]
                emit 0x77ddf252: arg2, msg.sender, arg1
            else:
                if _rewardRate * arg2 / arg2 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not _rewardRate * arg2 / 10000:
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if arg2 + _balances[arg1] < _balances[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = arg2 + _balances[arg1]
                    emit 0x77ddf252: arg2, msg.sender, arg1
                else:
                    if (_rewardRate * arg2 / 10000) + _balances[stor14] < _balances[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor14] += _rewardRate * arg2 / 10000
                    if _rewardRate * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (_rewardRate * arg2 / 10000) + _totalRewardToken < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += _rewardRate * arg2 / 10000
                    emit 0x77ddf252: (_rewardRate * arg2 / 10000), msg.sender, _rewardPoolAddress
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if arg2 - (_rewardRate * arg2 / 10000) + _balances[arg1] < _balances[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = arg2 - (_rewardRate * arg2 / 10000) + _balances[arg1]
                    emit 0x77ddf252: (arg2 - (_rewardRate * arg2 / 10000)), msg.sender, arg1
        else:
            if (_burnRate * arg2 / 10000) + _balances[stor15] < _balances[stor15]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[stor15] += _burnRate * arg2 / 10000
            if _burnRate * arg2 / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= _burnRate * arg2 / 10000
            if _burnRate * arg2 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_burnRate * arg2 / 10000) + _totalBurnToken < _totalBurnToken:
                revert with 0, 'SafeMath: addition overflow'
            _totalBurnToken += _burnRate * arg2 / 10000
            emit 0x77ddf252: (_burnRate * arg2 / 10000), msg.sender, _burnPoolAddress
            if not arg2:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if arg2 - (_burnRate * arg2 / 10000) + _balances[arg1] < _balances[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = arg2 - (_burnRate * arg2 / 10000) + _balances[arg1]
                emit 0x77ddf252: (arg2 - (_burnRate * arg2 / 10000)), msg.sender, arg1
            else:
                if _rewardRate * arg2 / arg2 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not _rewardRate * arg2 / 10000:
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if arg2 - (_burnRate * arg2 / 10000) + _balances[arg1] < _balances[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = arg2 - (_burnRate * arg2 / 10000) + _balances[arg1]
                    emit 0x77ddf252: (arg2 - (_burnRate * arg2 / 10000)), msg.sender, arg1
                else:
                    if (_rewardRate * arg2 / 10000) + _balances[stor14] < _balances[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor14] += _rewardRate * arg2 / 10000
                    if _rewardRate * arg2 / 10000 > arg2 - (_burnRate * arg2 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (_rewardRate * arg2 / 10000) + _totalRewardToken < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += _rewardRate * arg2 / 10000
                    emit 0x77ddf252: (_rewardRate * arg2 / 10000), msg.sender, _rewardPoolAddress
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if arg2 - (_burnRate * arg2 / 10000) - (_rewardRate * arg2 / 10000) + _balances[arg1] < _balances[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = arg2 - (_burnRate * arg2 / 10000) - (_rewardRate * arg2 / 10000) + _balances[arg1]
                    emit 0x77ddf252: (arg2 - (_burnRate * arg2 / 10000) - (_rewardRate * arg2 / 10000)), msg.sender, arg1
    return 1
}



}
