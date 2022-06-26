contract main {




// =====================  Runtime code  =====================


const decimals = 9


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address uniswapV2RouterAddress;
uint8 stor7; offset 160
address uniswapV2PairAddress;
uint256 stor7;
address deadWalletAddress;
uint256 swapTokensAtAmount;
uint256 liquidityFee;
uint256 marketingFee;
uint256 totalFees;
address _marketingWalletAddress;
mapping of uint8 stor14;
mapping of uint8 stor15;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function liquidityFee() {
    return liquidityFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)].field_0
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

function setSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapTokensAtAmount = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _marketingWalletAddress = arg1
}

function setLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    liquidityFee = arg1
    if marketingFee + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = marketingFee + arg1
    if 10 < marketingFee + arg1:
        revert with 0, 'Total Fees <= 10'
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketingFee = arg1
    if arg1 + liquidityFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityFee
    if 10 < arg1 + liquidityFee:
        revert with 0, 'Total Fees <= 10'
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

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 == bool(stor14[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734f52433a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[211 len 17]
    stor14[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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
        mem[32] = 14
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    74,
                    0x654f52433a205468652050616e63616b655377617020706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[238 len 22]
    if arg2 == bool(stor15[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x734f52433a204175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[225 len 3]
    stor15[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)].field_0 < allowance[address(msg.sender)][address(arg1)].field_0:
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
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)].field_0), msg.sender, arg1);
    return 1
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734f52433a2054686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[204 len 24]
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7.field_0))
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
    if not arg2:
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
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor14[address(msg.sender)]:
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
                if stor14[address(arg1)]:
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
                    if uint8(stor7.field_160):
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
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address]
                            emit Transfer(0, msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if totalFees * arg2 / arg2 != totalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalFees * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                            if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                            emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
        else:
            if uint8(stor7.field_160):
                if stor14[address(msg.sender)]:
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
                    if stor14[address(arg1)]:
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
                        if uint8(stor7.field_160):
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
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if totalFees * arg2 / arg2 != totalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalFees * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
            else:
                if stor15[address(msg.sender)]:
                    if stor14[address(msg.sender)]:
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
                        if stor14[address(arg1)]:
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
                            if uint8(stor7.field_160):
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
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if totalFees * arg2 / arg2 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalFees * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                    if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                    emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                else:
                    if msg.sender == owner:
                        if stor14[address(msg.sender)]:
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
                            if stor14[address(arg1)]:
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
                                if uint8(stor7.field_160):
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
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if totalFees * arg2 / arg2 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalFees * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                        if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                        emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                        if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                    else:
                        if arg1 == owner:
                            if stor14[address(msg.sender)]:
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
                                if stor14[address(arg1)]:
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
                                    if uint8(stor7.field_160):
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
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if totalFees * arg2 / arg2 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalFees * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                            if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                            emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                        else:
                            uint8(stor7.field_160) = 1
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                emit Approval((0 / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            else:
                                if marketingFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != marketingFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = marketingFee * balanceOf[address(this.address)] / totalFees
                                emit Approval((marketingFee * balanceOf[address(this.address)] / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args marketingFee * balanceOf[address(this.address)] / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            call _marketingWalletAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, deadWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                uint8(stor7.field_160) = 0
                                if stor14[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'rERC20: transfer from the zero addres'
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                    0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, '', 27, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'rERC20: transfer from the zero addres'
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                        0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, '', 27, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor7.field_160):
                                            if not msg.sender:
                                                revert with 0, 'rERC20: transfer from the zero addres'
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                            0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, '', 27, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if totalFees * arg2 / arg2 != totalFees:
                                                    revert with 0, ''SafeMath: multiplication overflo'
                                                if totalFees * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                            else:
                                if liquidityFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != liquidityFee:
                                    revert with 0, ''SafeMath: multiplication overflo'
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if liquidityFee * balanceOf[address(this.address)] / totalFees / 2 > liquidityFee * balanceOf[address(this.address)] / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = liquidityFee * balanceOf[address(this.address)] / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((liquidityFee * balanceOf[address(this.address)] / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)
                                emit Approval(((liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2), 0, 0, 0, deadWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2));
                                uint8(stor7.field_160) = 0
                                if stor14[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'rERC20: transfer from the zero addres'
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                    0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, '', 27, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'rERC20: transfer from the zero addres'
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                        0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, '', 27, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor7.field_160):
                                            if not msg.sender:
                                                revert with 0, 'rERC20: transfer from the zero addres'
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                            0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, '', 27, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if totalFees * arg2 / arg2 != totalFees:
                                                    revert with 0, ''SafeMath: multiplication overflo'
                                                if totalFees * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
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
    if not arg3:
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
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2]
        emit Transfer(0, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor14[address(arg1)]:
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
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                if stor14[address(arg2)]:
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
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                    if uint8(stor7.field_160):
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
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address]
                            emit Transfer(0, arg1, this.address);
                            if not arg1:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if totalFees * arg3 / arg3 != totalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalFees * arg3 / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                            if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[294 len 26],
                                            mem[346 len 6]
                            balanceOf[address(arg1)] -= totalFees * arg3 / 100
                            if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                            emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                            if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                            emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[488 len 24],
                                        mem[536 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
        else:
            if uint8(stor7.field_160):
                if stor14[address(arg1)]:
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
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                    if stor14[address(arg2)]:
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
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                        if uint8(stor7.field_160):
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
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if totalFees * arg3 / arg3 != totalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalFees * arg3 / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                if not arg1:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[488 len 24],
                                            mem[536 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
            else:
                if stor15[address(arg1)]:
                    if stor14[address(arg1)]:
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
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                        if stor14[address(arg2)]:
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
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                            if uint8(stor7.field_160):
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
                                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if totalFees * arg3 / arg3 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalFees * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                    if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                    emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                    if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                    emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[488 len 24],
                                                mem[536 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                else:
                    if arg1 == owner:
                        if stor14[address(arg1)]:
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
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                            if stor14[address(arg2)]:
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
                                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                if uint8(stor7.field_160):
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
                                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, arg1, this.address);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if totalFees * arg3 / arg3 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalFees * arg3 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                        if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                        emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                        if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                        emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[488 len 24],
                                                    mem[536 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                    else:
                        if arg2 == owner:
                            if stor14[address(arg1)]:
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
                                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                if stor14[address(arg2)]:
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
                                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                    if uint8(stor7.field_160):
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
                                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
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
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if totalFees * arg3 / arg3 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalFees * arg3 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                            if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                            emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                            if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                            emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[488 len 24],
                                                        mem[536 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                        else:
                            uint8(stor7.field_160) = 1
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                emit Approval((0 / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            else:
                                if marketingFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != marketingFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = marketingFee * balanceOf[address(this.address)] / totalFees
                                emit Approval((marketingFee * balanceOf[address(this.address)] / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args marketingFee * balanceOf[address(this.address)] / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            call _marketingWalletAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, deadWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                uint8(stor7.field_160) = 0
                                if stor14[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'rERC20: transfer from the zero addres'
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                    0
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, '', 27, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                        revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                else:
                                    if stor14[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'rERC20: transfer from the zero addres'
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                        0
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, '', 27, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                            revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                    else:
                                        if uint8(stor7.field_160):
                                            if not arg1:
                                                revert with 0, 'rERC20: transfer from the zero addres'
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            Mask(208, 0, (0 / totalFees) - (0 / totalFees / 2)),
                                                            0
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, '', 27, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                                revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                        else:
                                            if not arg3:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if 0 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, arg1, this.address);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(arg1)] -= arg3
                                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if totalFees * arg3 / arg3 != totalFees:
                                                    revert with 0, ''SafeMath: multiplication overflo'
                                                if totalFees * arg3 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                                if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                                if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                                emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[1064 len 24],
                                                            mem[1112 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1192 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1190 len 30]
                            else:
                                if liquidityFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != liquidityFee:
                                    revert with 0, ''SafeMath: multiplication overflo'
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if liquidityFee * balanceOf[address(this.address)] / totalFees / 2 > liquidityFee * balanceOf[address(this.address)] / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = liquidityFee * balanceOf[address(this.address)] / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((liquidityFee * balanceOf[address(this.address)] / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)
                                emit Approval(((liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2), 0, 0, 0, deadWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2));
                                uint8(stor7.field_160) = 0
                                if stor14[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'rERC20: transfer from the zero addres'
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                    0
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, '', 27, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                        revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                else:
                                    if stor14[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'rERC20: transfer from the zero addres'
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                        0
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, '', 27, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                            revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                    else:
                                        if uint8(stor7.field_160):
                                            if not arg1:
                                                revert with 0, 'rERC20: transfer from the zero addres'
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            Mask(208, 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)),
                                                            0
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, '', 27, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                                revert with 0, 'wERC20: transfer amount exceeds allowancimestam', 0
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
                                        else:
                                            if not arg3:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if 0 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, arg1, this.address);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(arg1)] -= arg3
                                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if totalFees * arg3 / arg3 != totalFees:
                                                    revert with 0, ''SafeMath: multiplication overflo'
                                                if totalFees * arg3 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[905 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[903 len 29]
                                                if totalFees * arg3 / 100 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[870 len 26],
                                                                mem[922 len 6]
                                                balanceOf[address(arg1)] -= totalFees * arg3 / 100
                                                if (totalFees * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg3 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg3 / 100), arg1, this.address);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if arg3 - (totalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (totalFees * arg3 / 100)
                                                if arg3 - (totalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (totalFees * arg3 / 100) + balanceOf[arg2]
                                                emit Transfer((arg3 - (totalFees * arg3 / 100)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[1064 len 24],
                                                            mem[1112 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1192 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1190 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
    return 1
}



}
