contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address uniswapV2RouterAddress;
uint8 stor7; offset 160
address uniswapV2PairAddress;
address liquidityWalletAddress;
uint256 maxSellTransactionAmount;
uint256 swapTokensAtAmount;
uint256 bNBRewardsFee;
uint256 liquidityFee;
uint256 tokenFee;
uint256 totalFees;
uint256 sellFeeIncreaseFactor;
mapping of uint8 stor16;
mapping of uint8 stor17;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

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

function sellFeeIncreaseFactor() {
    return sellFeeIncreaseFactor
}

function tokenFee() {
    return tokenFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[address(arg1)])
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

function liquidityFee() {
    return liquidityFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function BNBRewardsFee() {
    return bNBRewardsFee
}

function liquidityWallet() {
    return liquidityWalletAddress
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

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6554686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[199 len 29]
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 == bool(stor16[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x734163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[206 len 22]
    stor16[address(arg1)] = uint8(arg2)
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
        mem[32] = 16
        stor16[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
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
                    69,
                    0xfe5468652050616e63616b655377617020706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[233 len 27]
    if arg2 == bool(stor17[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x734175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[220 len 8]
    stor17[address(arg1)] = uint8(arg2)
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
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if liquidityWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x27546865206c69717569646974792077616c6c657420697320616c7265616479207468697320616464726573,
                    mem[208 len 20]
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if 1 == bool(stor16[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x734163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[206 len 22]
    stor16[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    emit LiquidityWalletUpdated(arg1, liquidityWalletAddress);
    liquidityWalletAddress = arg1
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
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
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
                        0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if not stor7:
            if stor17[address(arg1)]:
                if uniswapV2RouterAddress != msg.sender:
                    if not stor16[address(arg1)]:
                        if arg2 > maxSellTransactionAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        58,
                                        0x7353656c6c207472616e7366657220616d6f756e74206578636565647320746865206d617853656c6c5472616e73616374696f6e416d6f756e74,
                                        mem[222 len 6]
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor16[address(msg.sender)]:
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
                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor16[address(arg1)]:
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
                                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor7:
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
                                        0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if 0 / totalFees > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= 0 / totalFees
                            if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += 0 / totalFees
                            emit Transfer((0 / totalFees), msg.sender, 57005);
                            if 0 / totalFees > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                            if -0 / totalFees > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[518 len 26],
                                            mem[570 len 6]
                            balanceOf[address(msg.sender)] += 0 / totalFees
                            if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                            emit Transfer(-(0 / totalFees), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[614 len 26],
                                            mem[666 len 6]
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
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalFees * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalFees * arg2 / 100:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if 0 / totalFees > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= 0 / totalFees
                                if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 0 / totalFees
                                emit Transfer((0 / totalFees), msg.sender, 57005);
                                if 0 / totalFees > totalFees * arg2 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                            else:
                                if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[614 len 26],
                                            mem[666 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
        else:
            if stor7:
                if stor16[address(msg.sender)]:
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
                                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor16[address(arg1)]:
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
                                        0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7:
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
                                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if 0 / totalFees > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= 0 / totalFees
                                if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 0 / totalFees
                                emit Transfer((0 / totalFees), msg.sender, 57005);
                                if 0 / totalFees > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                if -0 / totalFees > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[518 len 26],
                                                mem[570 len 6]
                                balanceOf[address(msg.sender)] += 0 / totalFees
                                if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                                emit Transfer(-(0 / totalFees), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[614 len 26],
                                                mem[666 len 6]
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
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalFees * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalFees * arg2 / 100:
                                    if not totalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if 0 / totalFees > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / totalFees
                                    if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += 0 / totalFees
                                    emit Transfer((0 / totalFees), msg.sender, 57005);
                                    if 0 / totalFees > totalFees * arg2 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                    if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[518 len 26],
                                                    mem[570 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                    if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                    emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                                else:
                                    if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not totalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                    if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                    emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                    if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                    if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[518 len 26],
                                                    mem[570 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                    if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                    emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[614 len 26],
                                                mem[666 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
            else:
                if stor17[address(msg.sender)]:
                    if stor16[address(msg.sender)]:
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
                                        0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor16[address(arg1)]:
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
                                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
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
                                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                    if not totalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if 0 / totalFees > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= 0 / totalFees
                                    if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += 0 / totalFees
                                    emit Transfer((0 / totalFees), msg.sender, 57005);
                                    if 0 / totalFees > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                    if -0 / totalFees > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[518 len 26],
                                                    mem[570 len 6]
                                    balanceOf[address(msg.sender)] += 0 / totalFees
                                    if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                                    emit Transfer(-(0 / totalFees), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[614 len 26],
                                                    mem[666 len 6]
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
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalFees * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not totalFees * arg2 / 100:
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if 0 / totalFees > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / totalFees
                                        if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 0 / totalFees
                                        emit Transfer((0 / totalFees), msg.sender, 57005);
                                        if 0 / totalFees > totalFees * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                        if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[518 len 26],
                                                        mem[570 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                        if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                        emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                                    else:
                                        if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                        if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                        emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                        if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                        if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[518 len 26],
                                                        mem[570 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                        if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                        emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[614 len 26],
                                                    mem[666 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                else:
                    if liquidityWalletAddress == msg.sender:
                        if stor16[address(msg.sender)]:
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
                                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor16[address(arg1)]:
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
                                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
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
                                                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if 0 / totalFees > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= 0 / totalFees
                                        if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 0 / totalFees
                                        emit Transfer((0 / totalFees), msg.sender, 57005);
                                        if 0 / totalFees > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                        if -0 / totalFees > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[518 len 26],
                                                        mem[570 len 6]
                                        balanceOf[address(msg.sender)] += 0 / totalFees
                                        if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                                        emit Transfer(-(0 / totalFees), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[614 len 26],
                                                        mem[666 len 6]
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
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalFees * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not totalFees * arg2 / 100:
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if 0 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / totalFees
                                            if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += 0 / totalFees
                                            emit Transfer((0 / totalFees), msg.sender, 57005);
                                            if 0 / totalFees > totalFees * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                            if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[518 len 26],
                                                            mem[570 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                            if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                            emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                                        else:
                                            if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                            if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                            emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                            if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                            if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[518 len 26],
                                                            mem[570 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                            if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                            emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                        if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[614 len 26],
                                                        mem[666 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                        if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                    else:
                        if liquidityWalletAddress == arg1:
                            if stor16[address(msg.sender)]:
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
                                                0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor16[address(arg1)]:
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
                                                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
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
                                                        0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if 0 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / totalFees
                                            if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += 0 / totalFees
                                            emit Transfer((0 / totalFees), msg.sender, 57005);
                                            if 0 / totalFees > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                            if -0 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[518 len 26],
                                                            mem[570 len 6]
                                            balanceOf[address(msg.sender)] += 0 / totalFees
                                            if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                                            emit Transfer(-(0 / totalFees), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[614 len 26],
                                                            mem[666 len 6]
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
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalFees * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not totalFees * arg2 / 100:
                                                if not totalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if 0 / totalFees > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / totalFees
                                                if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += 0 / totalFees
                                                emit Transfer((0 / totalFees), msg.sender, 57005);
                                                if 0 / totalFees > totalFees * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                                if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[518 len 26],
                                                                mem[570 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                                if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                                emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                                            else:
                                                if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if not totalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                                if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                                emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                                if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[518 len 26],
                                                                mem[570 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                                emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[614 len 26],
                                                            mem[666 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                        else:
                            stor7 = 1
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[580 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, '.ERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, liquidityWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                            else:
                                if liquidityFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != liquidityFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if liquidityFee * balanceOf[address(this.address)] / totalFees / 2 > liquidityFee * balanceOf[address(this.address)] / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                allowance[address(this.address)][stor6].field_0 = liquidityFee * balanceOf[address(this.address)] / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((liquidityFee * balanceOf[address(this.address)] / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[580 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, '.ERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)
                                emit Approval(((liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2), 0, 0, 0, liquidityWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2));
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, '', 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                            allowance[address(this.address)][stor6].field_0 = balanceOf[address(this.address)]
                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                            mem[740 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)], 0, 0, 160, this.address, block.timestamp, 2, mem[740 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address):
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            stor7 = 0
                            if stor16[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, '', 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, this.address)
                                if not arg1:
                                    revert with 0, '', 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, this.address)
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                'eERC20: transfer amount exceeds balanc',
                                                Mask(48, -256, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor16[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, '', 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, this.address)
                                    if not arg1:
                                        revert with 0, '', 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, this.address)
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'eERC20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if not msg.sender:
                                            revert with 0, '', 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, this.address)
                                        if not arg1:
                                            revert with 0, '', 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, this.address)
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'eERC20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                            if 0 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[806 len 26],
                                                            mem[858 len 6]
                                            balanceOf[address(msg.sender)] -= 0 / totalFees
                                            if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += 0 / totalFees
                                            emit Transfer((0 / totalFees), msg.sender, 57005);
                                            if 0 / totalFees > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                            if -0 / totalFees > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[966 len 26],
                                                            mem[1018 len 6]
                                            balanceOf[address(msg.sender)] += 0 / totalFees
                                            if -(0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = -(0 / totalFees) + balanceOf[this.address]
                                            emit Transfer(-(0 / totalFees), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[1062 len 26],
                                                            mem[1114 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if totalFees * arg2 / arg2 != totalFees:
                                                revert with 0, '', 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, this.address)
                                            if totalFees * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not totalFees * arg2 / 100:
                                                if not totalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                                if 0 / totalFees > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[806 len 26],
                                                                mem[858 len 6]
                                                balanceOf[address(msg.sender)] -= 0 / totalFees
                                                if (0 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += 0 / totalFees
                                                emit Transfer((0 / totalFees), msg.sender, 57005);
                                                if 0 / totalFees > totalFees * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if (totalFees * arg2 / 100) - (0 / totalFees) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (0 / totalFees)
                                                if (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (0 / totalFees) + balanceOf[this.address]
                                                emit Transfer(((totalFees * arg2 / 100) - (0 / totalFees)), msg.sender, this.address);
                                            else:
                                                if tokenFee * totalFees * arg2 / 100 / totalFees * arg2 / 100 != tokenFee:
                                                    revert with 0, 'sSafeMath: multiplication overflo', mem[773 len 31]
                                                if not totalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                                if tokenFee * totalFees * arg2 / 100 / totalFees > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[806 len 26],
                                                                mem[858 len 6]
                                                balanceOf[address(msg.sender)] -= tokenFee * totalFees * arg2 / 100 / totalFees
                                                if (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += tokenFee * totalFees * arg2 / 100 / totalFees
                                                emit Transfer((tokenFee * totalFees * arg2 / 100 / totalFees), msg.sender, 57005);
                                                if tokenFee * totalFees * arg2 / 100 / totalFees > totalFees * arg2 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1001 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[999 len 29]
                                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[966 len 26],
                                                                mem[1018 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (totalFees * arg2 / 100) + (tokenFee * totalFees * arg2 / 100 / totalFees)
                                                if (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees) + balanceOf[this.address]
                                                emit Transfer(((totalFees * arg2 / 100) - (tokenFee * totalFees * arg2 / 100 / totalFees)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1097 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1095 len 29]
                                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[1062 len 26],
                                                            mem[1114 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
    return 1
}



}
