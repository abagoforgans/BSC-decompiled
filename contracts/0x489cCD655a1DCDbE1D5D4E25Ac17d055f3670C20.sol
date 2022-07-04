contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18

const blackHole = 1


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint8 stor8; offset 160
address pairAddress;
uint256 swapTokensAtAmount;
mapping of uint256 sub_9bedd49c;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor16;
uint256 stor17;
address stor18;
address stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
uint8 swapAndLiquifyEnabled;

function name() {
    return name[0 len name.length]
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_2b9d118e(?) {
    return bool(stor11)
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[address(arg1)])
}

function sub_625b210a(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9bedd49c(?) {
    require calldata.size - 4 >= 32
    return sub_9bedd49c[arg1]
}

function pair() {
    return pairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e24c0b03(?) {
    require calldata.size - 4 >= 32
    return sub_9bedd49c[address(arg1)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8c251c99(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11 = uint8(arg1)
}

function setPair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    pairAddress = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapAndLiquifyEnabled = uint8(arg1)
}

function sub_6cd407cf(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor21[address(arg1)] = uint8(arg2)
    emit 0xf2a2570b: arg2, arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor20[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function Approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 20
        stor20[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), arg2);
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
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
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferArray(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _30 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _32 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not msg.sender:
            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
        _37 = mem[64]
        mem[64] = mem[64] + 96
        mem[_37] = 38
        mem[_37 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
        mem[32] = 1
        if _32 > balanceOf[address(msg.sender)]:
            _39 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 38
            idx = 0
            while idx < 38:
                mem[idx + _39 + 68] = mem[idx + _37 + 32]
                idx = idx + 32
                continue 
            mem[_39 + 100] = mem[_39 + 126 len 6]
            revert with memory
              from mem[64]
               len _39 + -mem[64] + 132
        balanceOf[address(msg.sender)] -= _32
        if _32 + balanceOf[address(_30)] < balanceOf[address(_30)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_30)
        mem[32] = 1
        balanceOf[address(_30)] += _32
        mem[mem[64]] = _32
        emit Transfer(_32, msg.sender, address(_30));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if pairAddress == msg.sender:
        if not stor21[address(arg1)]:
            if stor11:
                if arg2 + sub_9bedd49c[address(arg1)] > 150000000000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x655472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                                mem[204 len 24]
                sub_9bedd49c[address(arg1)] += arg2
    if balanceOf[address(this.address)] < swapTokensAtAmount:
        if stor20[address(msg.sender)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor20[address(arg1)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor8:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not swapAndLiquifyEnabled:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if pairAddress == msg.sender:
                            if not arg2:
                                if not stor16:
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(msg.sender)] -= 0 / stor16
                                if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[1] += 0 / stor16
                                emit Transfer((0 / stor16), msg.sender, 1);
                                if not stor16:
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                if not stor19:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                balanceOf[address(msg.sender)] -= 0 / stor16
                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor19] += 0 / stor16
                                emit Transfer((0 / stor16), msg.sender, stor19);
                                if 0 / stor16 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 / stor16 > -0 / stor16:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[678 len 26],
                                                mem[730 len 6]
                                balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[838 len 26],
                                                mem[890 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor16 * arg2 / arg2 != stor16:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not stor16 * arg2 / 100:
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += 0 / stor16
                                    emit Transfer((0 / stor16), msg.sender, 1);
                                    if not stor16 * arg2 / 100:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                        if 0 / stor16 > stor16 * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                        emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                    else:
                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                        if 0 / stor16 > stor16 * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                        emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                else:
                                    if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                    if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                    emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                    if not stor16 * arg2 / 100:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                    else:
                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                if stor16 * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[838 len 26],
                                                mem[890 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                        else:
                            if pairAddress != arg1:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += 0 / stor16
                                    emit Transfer((0 / stor16), msg.sender, 1);
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not stor19:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor19] += 0 / stor16
                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                    if 0 / stor16 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 / stor16 > -0 / stor16:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                    if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                    emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[838 len 26],
                                                    mem[890 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor16 * arg2 / arg2 != stor16:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not stor16 * arg2 / 100:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, 1);
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                    else:
                                        if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                        if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                        emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                    if stor16 * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                    if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[838 len 26],
                                                    mem[890 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                    if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
    else:
        if stor8:
            if stor20[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor20[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor8:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not swapAndLiquifyEnabled:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if pairAddress == msg.sender:
                                if not arg2:
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += 0 / stor16
                                    emit Transfer((0 / stor16), msg.sender, 1);
                                    if not stor16:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not stor19:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor19] += 0 / stor16
                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                    if 0 / stor16 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 / stor16 > -0 / stor16:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                    if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[678 len 26],
                                                    mem[730 len 6]
                                    balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                    if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                    emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[838 len 26],
                                                    mem[890 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor16 * arg2 / arg2 != stor16:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not stor16 * arg2 / 100:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, 1);
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                    else:
                                        if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                        if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                        emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                    if stor16 * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                    if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[838 len 26],
                                                    mem[890 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                    if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                            else:
                                if pairAddress != arg1:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, 1);
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                        if 0 / stor16 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 / stor16 > -0 / stor16:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                        if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                        emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16 * arg2 / arg2 != stor16:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, 1);
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                            if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                        if stor16 * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                        if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
        else:
            if stor22[address(msg.sender)]:
                if stor20[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor20[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not swapAndLiquifyEnabled:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if pairAddress == msg.sender:
                                    if not arg2:
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, 1);
                                        if not stor16:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not stor19:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor19] += 0 / stor16
                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                        if 0 / stor16 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 / stor16 > -0 / stor16:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                        if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[678 len 26],
                                                        mem[730 len 6]
                                        balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                        if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                        emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16 * arg2 / arg2 != stor16:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not stor16 * arg2 / 100:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, 1);
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                        else:
                                            if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                            if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                            emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                        if stor16 * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                        if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[838 len 26],
                                                        mem[890 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                        if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                                else:
                                    if pairAddress != arg1:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, 1);
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > -0 / stor16:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                            if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                            emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[838 len 26],
                                                            mem[890 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16 * arg2 / arg2 != stor16:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, 1);
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                    if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                    if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                    if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                    if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                            if stor16 * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                            if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[838 len 26],
                                                            mem[890 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                            if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
            else:
                if msg.sender == owner:
                    if stor20[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor20[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor8:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not swapAndLiquifyEnabled:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if pairAddress == msg.sender:
                                        if not arg2:
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, 1);
                                            if not stor16:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not stor19:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor19] += 0 / stor16
                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                            if 0 / stor16 > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 0 / stor16 > -0 / stor16:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                            if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[678 len 26],
                                                            mem[730 len 6]
                                            balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                            if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                            emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[838 len 26],
                                                            mem[890 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16 * arg2 / arg2 != stor16:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not stor16 * arg2 / 100:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, 1);
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                    if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                    if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                    if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                            else:
                                                if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                    if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                    if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                    emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                            if stor16 * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                            if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[838 len 26],
                                                            mem[890 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                            if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                                    else:
                                        if pairAddress != arg1:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, 1);
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > -0 / stor16:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[838 len 26],
                                                                mem[890 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor16 * arg2 / arg2 != stor16:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, 1);
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                    if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                if stor16 * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[838 len 26],
                                                                mem[890 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                else:
                    if arg1 == owner:
                        if stor20[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor20[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor8:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not swapAndLiquifyEnabled:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if pairAddress == msg.sender:
                                            if not arg2:
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, 1);
                                                if not stor16:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not stor19:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor19] += 0 / stor16
                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                if 0 / stor16 > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 0 / stor16 > -0 / stor16:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[678 len 26],
                                                                mem[730 len 6]
                                                balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[838 len 26],
                                                                mem[890 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor16 * arg2 / arg2 != stor16:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if not stor16 * arg2 / 100:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, 1);
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                        if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                        if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                else:
                                                    if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                    if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                    emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                        if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                        if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                        emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                if stor16 * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[838 len 26],
                                                                mem[890 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                                        else:
                                            if pairAddress != arg1:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[230 len 26],
                                                                mem[282 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, 1);
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > 0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > -0 / stor16:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                    if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                    emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor16 * arg2 / arg2 != stor16:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                        if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    if stor16 * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                    if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                    if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                    else:
                        if not swapAndLiquifyEnabled:
                            if stor20[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor20[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor8:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not swapAndLiquifyEnabled:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if pairAddress == msg.sender:
                                                if not arg2:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, 1);
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > 0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > -0 / stor16:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                    if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[678 len 26],
                                                                    mem[730 len 6]
                                                    balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                    if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                    emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor16 * arg2 / arg2 != stor16:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                        if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[678 len 26],
                                                                            mem[730 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    if stor16 * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                    if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                    if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                                            else:
                                                if pairAddress != arg1:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[230 len 26],
                                                                    mem[282 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, 1);
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > 0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > -0 / stor16:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                        if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[678 len 26],
                                                                        mem[730 len 6]
                                                        balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                        if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                        emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                        if not arg1:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[838 len 26],
                                                                        mem[890 len 6]
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor16 * arg2 / arg2 != stor16:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        33,
                                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[197 len 31]
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[294 len 26],
                                                                            mem[346 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[1] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, 1);
                                                            if not stor16 * arg2 / 100:
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[454 len 26],
                                                                                mem[506 len 6]
                                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += 0 / stor16
                                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[678 len 26],
                                                                                mem[730 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                            else:
                                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[454 len 26],
                                                                                mem[506 len 6]
                                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[678 len 26],
                                                                                mem[730 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[294 len 26],
                                                                            mem[346 len 6]
                                                            balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                            if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                            if not stor16 * arg2 / 100:
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[454 len 26],
                                                                                mem[506 len 6]
                                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += 0 / stor16
                                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[678 len 26],
                                                                                mem[730 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                            else:
                                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[454 len 26],
                                                                                mem[506 len 6]
                                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[713 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[711 len 29]
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[678 len 26],
                                                                                mem[730 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                        if stor16 * arg2 / 100 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                        if not arg1:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                        if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[838 len 26],
                                                                        mem[890 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                        if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                        emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                        else:
                            stor8 = 1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                            allowance[address(this.address)][stor6] = swapTokensAtAmount
                            emit Approval(swapTokensAtAmount, this.address, uniswapV2RouterAddress);
                            mem[388 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapTokensAtAmount, 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not eth.balance(this.address):
                                if not stor17:
                                    revert with 0, 'SafeMath: division by zero'
                                call stor18 with:
                                   value 0 / stor17 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xc7ca2275: stor18, 0 / stor17, 'marking'
                            else:
                                if stor12 * eth.balance(this.address) / eth.balance(this.address) != stor12:
                                    revert with 0, '.SafeMath: multiplication overfloddres'
                                if not stor17:
                                    revert with 0, 'SafeMath: division by zero'
                                call stor18 with:
                                   value stor12 * eth.balance(this.address) / stor17 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xc7ca2275: stor18, stor12 * eth.balance(this.address) / stor17, 'marking'
                            stor8 = 0
                            if stor20[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'rERC20: transfer from the zero addres', Mask(32, 224, 'marking') >> 224
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0, Mask(32, 224, 'marking') >> 224
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                'sERC20: transfer amount exceeds balanc',
                                                Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor20[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, 'rERC20: transfer from the zero addres', Mask(32, 224, 'marking') >> 224
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0, Mask(32, 224, 'marking') >> 224
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'sERC20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor8:
                                        if not msg.sender:
                                            revert with 0, 'rERC20: transfer from the zero addres', Mask(32, 224, 'marking') >> 224
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0, Mask(32, 224, 'marking') >> 224
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'sERC20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not swapAndLiquifyEnabled:
                                            if not msg.sender:
                                                revert with 0, 'rERC20: transfer from the zero addres', Mask(32, 224, 'marking') >> 224
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0, Mask(32, 224, 'marking') >> 224
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            'sERC20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if pairAddress == msg.sender:
                                                if not arg2:
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, 1);
                                                    if not stor16:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                    if not stor19:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                    if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[614 len 26],
                                                                    mem[666 len 6]
                                                    balanceOf[address(msg.sender)] -= 0 / stor16
                                                    if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor19] += 0 / stor16
                                                    emit Transfer((0 / stor16), msg.sender, stor19);
                                                    if 0 / stor16 > 0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if 0 / stor16 > -0 / stor16:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                    if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                    if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                    emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[998 len 26],
                                                                    mem[1050 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if stor16 * arg2 / arg2 != stor16:
                                                        revert with 0, '.SafeMath: multiplication overflo', Mask(32, 224, 'marking') >> 224
                                                    if not stor16 * arg2 / 100:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[614 len 26],
                                                                            mem[666 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[838 len 26],
                                                                            mem[890 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                            if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[614 len 26],
                                                                            mem[666 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if 0 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[838 len 26],
                                                                            mem[890 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    else:
                                                        if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                        if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                        emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[614 len 26],
                                                                            mem[666 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[838 len 26],
                                                                            mem[890 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                            if not stor19:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[614 len 26],
                                                                            mem[666 len 6]
                                                            balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                            if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                            if not this.address:
                                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[838 len 26],
                                                                            mem[890 len 6]
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                            if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                            emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                    if stor16 * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                    if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[998 len 26],
                                                                    mem[1050 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                    if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
                                            else:
                                                if pairAddress != arg1:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'sERC20: transfer amount exceeds balancmarking', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, 1);
                                                        if not stor16:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                        if not stor19:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                        if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[614 len 26],
                                                                        mem[666 len 6]
                                                        balanceOf[address(msg.sender)] -= 0 / stor16
                                                        if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[stor19] += 0 / stor16
                                                        emit Transfer((0 / stor16), msg.sender, stor19);
                                                        if 0 / stor16 > 0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 0 / stor16 > -0 / stor16:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                        if -2 * 0 / stor16 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[838 len 26],
                                                                        mem[890 len 6]
                                                        balanceOf[address(msg.sender)] += 2 * 0 / stor16
                                                        if (-2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (-2 * 0 / stor16) + balanceOf[this.address]
                                                        emit Transfer((-2 * 0 / stor16), msg.sender, this.address);
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                        if not arg1:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[998 len 26],
                                                                        mem[1050 len 6]
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if stor16 * arg2 / arg2 != stor16:
                                                            revert with 0, '.SafeMath: multiplication overflo', Mask(32, 224, 'marking') >> 224
                                                        if not stor16 * arg2 / 100:
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= 0 / stor16
                                                            if (0 / stor16) + balanceOf[1] < balanceOf[1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[1] += 0 / stor16
                                                            emit Transfer((0 / stor16), msg.sender, 1);
                                                            if not stor16 * arg2 / 100:
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[614 len 26],
                                                                                mem[666 len 6]
                                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += 0 / stor16
                                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if 0 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[838 len 26],
                                                                                mem[890 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (2 * 0 / stor16)
                                                                if (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (2 * 0 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (2 * 0 / stor16)), msg.sender, this.address);
                                                            else:
                                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[614 len 26],
                                                                                mem[666 len 6]
                                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                                if 0 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (0 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[838 len 26],
                                                                                mem[890 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (0 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                                if (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (0 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                        else:
                                                            if stor14 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor14:
                                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                            if not stor16:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if not msg.sender:
                                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                            if stor14 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[454 len 26],
                                                                            mem[506 len 6]
                                                            balanceOf[address(msg.sender)] -= stor14 * stor16 * arg2 / 100 / stor16
                                                            if (stor14 * stor16 * arg2 / 100 / stor16) + balanceOf[1] < balanceOf[1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[1] += stor14 * stor16 * arg2 / 100 / stor16
                                                            emit Transfer((stor14 * stor16 * arg2 / 100 / stor16), msg.sender, 1);
                                                            if not stor16 * arg2 / 100:
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                                if 0 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[614 len 26],
                                                                                mem[666 len 6]
                                                                balanceOf[address(msg.sender)] -= 0 / stor16
                                                                if (0 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += 0 / stor16
                                                                emit Transfer((0 / stor16), msg.sender, stor19);
                                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if 0 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[838 len 26],
                                                                                mem[890 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (0 / stor16)
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (0 / stor16)), msg.sender, this.address);
                                                            else:
                                                                if stor13 * stor16 * arg2 / 100 / stor16 * arg2 / 100 != stor13:
                                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                                if not stor16:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                                if not stor19:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[614 len 26],
                                                                                mem[666 len 6]
                                                                balanceOf[address(msg.sender)] -= stor13 * stor16 * arg2 / 100 / stor16
                                                                if (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[stor19] < balanceOf[stor19]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[stor19] += stor13 * stor16 * arg2 / 100 / stor16
                                                                emit Transfer((stor13 * stor16 * arg2 / 100 / stor16), msg.sender, stor19);
                                                                if stor14 * stor16 * arg2 / 100 / stor16 > stor16 * arg2 / 100:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if stor13 * stor16 * arg2 / 100 / stor16 > (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16):
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                if not msg.sender:
                                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[873 len 27]
                                                                if not this.address:
                                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[871 len 29]
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) > balanceOf[address(msg.sender)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[838 len 26],
                                                                                mem[890 len 6]
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor16 * arg2 / 100) + (stor14 * stor16 * arg2 / 100 / stor16) + (stor13 * stor16 * arg2 / 100 / stor16)
                                                                if (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(this.address)] = (stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16) + balanceOf[this.address]
                                                                emit Transfer(((stor16 * arg2 / 100) - (stor14 * stor16 * arg2 / 100 / stor16) - (stor13 * stor16 * arg2 / 100 / stor16)), msg.sender, this.address);
                                                        if stor16 * arg2 / 100 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not msg.sender:
                                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                        if not arg1:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                        if arg2 - (stor16 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[998 len 26],
                                                                        mem[1050 len 6]
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (stor16 * arg2 / 100)
                                                        if arg2 - (stor16 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = arg2 - (stor16 * arg2 / 100) + balanceOf[arg1]
                                                        emit Transfer((arg2 - (stor16 * arg2 / 100)), msg.sender, arg1);
    return 1
}



}
