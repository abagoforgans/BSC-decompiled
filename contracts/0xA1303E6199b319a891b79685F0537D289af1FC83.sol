contract main {




// =====================  Runtime code  =====================


const _rateBase = 10000

const _minValueRate = 10

const _maxValueRate = 2000


address _governanceAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor4;
array of address _minter;
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
address _teamWalletAddress;
uint256 _teamMinted;
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

function _governance() {
    return _governanceAddress
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

function _teamWallet() {
    return _teamWalletAddress
}

function minterAddressesLength() {
    return _minter.length
}

function _totalRewardToken() {
    return _totalRewardToken
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

function _minterAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _minter.length
    return _minter[arg1]
}

function _rewardPool() {
    return _rewardPoolAddress
}

function _teamMinted() {
    return _teamMinted
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableOpenTransfer() {
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    _openTransfer = 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor4[address(arg1)] = 1
    _minter.length++
    _minter[_minter.length] = arg1
}

function setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _teamWalletAddress = arg1
    emit 0x4a18a373: _teamWalletAddress
}

function setRewardPool(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    require arg1
    _rewardPoolAddress = arg1
    emit 0xf7c01861: _rewardPoolAddress
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function setRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
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
    emit 0x9f008dd6: arg1, arg2
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor4[address(arg1)] = 0
    idx = 0
    while idx < _minter.length:
        mem[0] = 5
        if _minter[idx] != arg1:
            idx = idx + 1
            continue 
        require _minter.length - 1 < _minter.length
        require idx < _minter.length
        _minter[idx] = _minter[_minter.length]
        require _minter.length
        _minter[_minter.length] = 0
        _minter.length--
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
    _allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if not stor4[address(msg.sender)]:
        if _teamWalletAddress != msg.sender:
            revert with 0, '!minter'
    if totalSupply + _totalBurnToken < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + _totalBurnToken + arg2 > _maxSupply:
        revert with 0, 'supply is max!'
    if _teamWalletAddress == msg.sender:
        if _teamMinted + arg2 < _teamMinted:
            revert with 0, 'SafeMath: addition overflow'
        if _teamMinted + arg2 > totalSupply + _totalBurnToken / 100:
            revert with 0, 'more than 1 %'
        if _teamMinted + arg2 < _teamMinted:
            revert with 0, 'SafeMath: addition overflow'
        _teamMinted += arg2
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > _allowances[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    _allowances[address(arg1)][address(msg.sender)] -= arg3
    if not _openTransfer:
        if arg1 != _governanceAddress:
            revert with 0, 'transfer closed'
    if not arg1:
        revert with 0, 32, 37, 0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
    if not arg3:
        if not arg3:
            if arg3 > _balances[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            _balances[address(arg1)] -= arg3
            if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            require arg3
            if arg3 * _rewardRate / arg3 != _rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if arg3 * _rewardRate / 10000 <= 0:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if _balances[stor15] + (arg3 * _rewardRate / 10000) < _balances[stor15]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[stor15] += arg3 * _rewardRate / 10000
                if arg3 * _rewardRate / 10000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if _totalRewardToken + (arg3 * _rewardRate / 10000) < _totalRewardToken:
                    revert with 0, 'SafeMath: addition overflow'
                _totalRewardToken += arg3 * _rewardRate / 10000
                emit Transfer((arg3 * _rewardRate / 10000), arg1, _rewardPoolAddress);
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 - (arg3 * _rewardRate / 10000) < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * _rewardRate / 10000)
                emit Transfer((arg3 - (arg3 * _rewardRate / 10000)), arg1, arg2);
    else:
        require arg3
        if arg3 * _burnRate / arg3 != _burnRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg3 * _burnRate / 10000 <= 0:
            if not arg3:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require arg3
                if arg3 * _rewardRate / arg3 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if arg3 * _rewardRate / 10000 <= 0:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if _balances[stor15] + (arg3 * _rewardRate / 10000) < _balances[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor15] += arg3 * _rewardRate / 10000
                    if arg3 * _rewardRate / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _totalRewardToken + (arg3 * _rewardRate / 10000) < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += arg3 * _rewardRate / 10000
                    emit Transfer((arg3 * _rewardRate / 10000), arg1, _rewardPoolAddress);
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 - (arg3 * _rewardRate / 10000) < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * _rewardRate / 10000)
                    emit Transfer((arg3 - (arg3 * _rewardRate / 10000)), arg1, arg2);
        else:
            if _balances[stor18] + (arg3 * _burnRate / 10000) < _balances[stor18]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[stor18] += arg3 * _burnRate / 10000
            if arg3 * _burnRate / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg3 * _burnRate / 10000
            if arg3 * _burnRate / 10000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if _totalBurnToken + (arg3 * _burnRate / 10000) < _totalBurnToken:
                revert with 0, 'SafeMath: addition overflow'
            _totalBurnToken += arg3 * _burnRate / 10000
            emit Transfer((arg3 * _burnRate / 10000), arg1, _burnPoolAddress);
            if not arg3:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000) < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000)
                emit Transfer((arg3 - (arg3 * _burnRate / 10000)), arg1, arg2);
            else:
                require arg3
                if arg3 * _rewardRate / arg3 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if arg3 * _rewardRate / 10000 <= 0:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000) < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000)
                    emit Transfer((arg3 - (arg3 * _burnRate / 10000)), arg1, arg2);
                else:
                    if _balances[stor15] + (arg3 * _rewardRate / 10000) < _balances[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor15] += arg3 * _rewardRate / 10000
                    if arg3 * _rewardRate / 10000 > arg3 - (arg3 * _burnRate / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _totalRewardToken + (arg3 * _rewardRate / 10000) < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += arg3 * _rewardRate / 10000
                    emit Transfer((arg3 * _rewardRate / 10000), arg1, _rewardPoolAddress);
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000) < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000)
                    emit Transfer((arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000)), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not _openTransfer:
        if _governanceAddress != msg.sender:
            revert with 0, 'transfer closed'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7745524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
            if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            if arg2 * _rewardRate / arg2 != _rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if arg2 * _rewardRate / 10000 <= 0:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if _balances[stor15] + (arg2 * _rewardRate / 10000) < _balances[stor15]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[stor15] += arg2 * _rewardRate / 10000
                if arg2 * _rewardRate / 10000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if _totalRewardToken + (arg2 * _rewardRate / 10000) < _totalRewardToken:
                    revert with 0, 'SafeMath: addition overflow'
                _totalRewardToken += arg2 * _rewardRate / 10000
                emit Transfer((arg2 * _rewardRate / 10000), msg.sender, _rewardPoolAddress);
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 - (arg2 * _rewardRate / 10000) < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * _rewardRate / 10000)
                emit Transfer((arg2 - (arg2 * _rewardRate / 10000)), msg.sender, arg1);
    else:
        require arg2
        if arg2 * _burnRate / arg2 != _burnRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * _burnRate / 10000 <= 0:
            if not arg2:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require arg2
                if arg2 * _rewardRate / arg2 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 * _rewardRate / 10000 <= 0:
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if _balances[stor15] + (arg2 * _rewardRate / 10000) < _balances[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor15] += arg2 * _rewardRate / 10000
                    if arg2 * _rewardRate / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _totalRewardToken + (arg2 * _rewardRate / 10000) < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += arg2 * _rewardRate / 10000
                    emit Transfer((arg2 * _rewardRate / 10000), msg.sender, _rewardPoolAddress);
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if _balances[address(arg1)] + arg2 - (arg2 * _rewardRate / 10000) < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * _rewardRate / 10000)
                    emit Transfer((arg2 - (arg2 * _rewardRate / 10000)), msg.sender, arg1);
        else:
            if _balances[stor18] + (arg2 * _burnRate / 10000) < _balances[stor18]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[stor18] += arg2 * _burnRate / 10000
            if arg2 * _burnRate / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2 * _burnRate / 10000
            if arg2 * _burnRate / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if _totalBurnToken + (arg2 * _burnRate / 10000) < _totalBurnToken:
                revert with 0, 'SafeMath: addition overflow'
            _totalBurnToken += arg2 * _burnRate / 10000
            emit Transfer((arg2 * _burnRate / 10000), msg.sender, _burnPoolAddress);
            if not arg2:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000) < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000)
                emit Transfer((arg2 - (arg2 * _burnRate / 10000)), msg.sender, arg1);
            else:
                require arg2
                if arg2 * _rewardRate / arg2 != _rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if arg2 * _rewardRate / 10000 <= 0:
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000) < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000)
                    emit Transfer((arg2 - (arg2 * _burnRate / 10000)), msg.sender, arg1);
                else:
                    if _balances[stor15] + (arg2 * _rewardRate / 10000) < _balances[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[stor15] += arg2 * _rewardRate / 10000
                    if arg2 * _rewardRate / 10000 > arg2 - (arg2 * _burnRate / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _totalRewardToken + (arg2 * _rewardRate / 10000) < _totalRewardToken:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalRewardToken += arg2 * _rewardRate / 10000
                    emit Transfer((arg2 * _rewardRate / 10000), msg.sender, _rewardPoolAddress);
                    if arg2 > _balances[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _balances[address(msg.sender)] -= arg2
                    if _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000) - (arg2 * _rewardRate / 10000) < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * _burnRate / 10000) - (arg2 * _rewardRate / 10000)
                    emit Transfer((arg2 - (arg2 * _burnRate / 10000) - (arg2 * _rewardRate / 10000)), msg.sender, arg1);
    return 1
}



}
