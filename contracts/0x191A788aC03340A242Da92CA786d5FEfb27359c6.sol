contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const blackHole = 1


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address uniswapV2RouterAddress;
uint8 stor8; offset 160
address uniswapV2PairAddress;
uint256 swapTokensAtAmount;
uint256 sub_88c2b779;
uint256 sub_8e36d256;
uint256 sub_bd17b93c;
uint256 blackHoleFee;
uint256 buyTotalFees;
address stor15;
uint256 stor15;
address stor16;
uint256 stor16;
address stor17;
uint256 stor17;
uint256 stor17;
uint256 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function blackHoleFee() {
    return blackHoleFee
}

function sub_88c2b779(?) {
    return sub_88c2b779
}

function owner() {
    return owner
}

function sub_8e36d256(?) {
    return sub_8e36d256
}

function symbol() {
    return symbol[0 len symbol.length]
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function sub_bd17b93c(?) {
    return sub_bd17b93c
}

function buyTotalFees() {
    return buyTotalFees
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x654f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65725353,
                    mem[199 len 29]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function Approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x654f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65725353,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    stor1 = arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor18[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                if stor18[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    if stor8:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        if not swapAndLiquifyEnabled:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                if not buyTotalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(arg1)] -= 0 / buyTotalFees
                                if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[1] += 0 / buyTotalFees
                                emit Transfer((0 / buyTotalFees), arg1, 1);
                                if 0 / buyTotalFees > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[454 len 26],
                                                mem[506 len 6]
                                balanceOf[address(arg1)] += 0 / buyTotalFees
                                if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[614 len 26],
                                                mem[666 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not buyTotalFees * arg3 / 100:
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= 0 / buyTotalFees
                                    if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += 0 / buyTotalFees
                                    emit Transfer((0 / buyTotalFees), arg1, 1);
                                    if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                    if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                    emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                else:
                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                    if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                    emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                    if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                    emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                if buyTotalFees * arg3 / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[614 len 26],
                                                mem[666 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
            if stor8:
                if stor18[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    if stor18[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        if stor8:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            if not swapAndLiquifyEnabled:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= 0 / buyTotalFees
                                    if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[1] += 0 / buyTotalFees
                                    emit Transfer((0 / buyTotalFees), arg1, 1);
                                    if 0 / buyTotalFees > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(arg1)] += 0 / buyTotalFees
                                    if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                    emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[614 len 26],
                                                    mem[666 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not buyTotalFees * arg3 / 100:
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= 0 / buyTotalFees
                                        if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / buyTotalFees
                                        emit Transfer((0 / buyTotalFees), arg1, 1);
                                        if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                        emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                    else:
                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                        if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                        emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                        emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                    if buyTotalFees * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                    if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[614 len 26],
                                                    mem[666 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                    if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                    emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
                if stor19[address(arg1)]:
                    if stor18[address(arg1)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        if stor18[address(arg2)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            if stor8:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                if not swapAndLiquifyEnabled:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= 0 / buyTotalFees
                                        if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[1] += 0 / buyTotalFees
                                        emit Transfer((0 / buyTotalFees), arg1, 1);
                                        if 0 / buyTotalFees > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(arg1)] += 0 / buyTotalFees
                                        if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                        emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[614 len 26],
                                                        mem[666 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not buyTotalFees * arg3 / 100:
                                            if not buyTotalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= 0 / buyTotalFees
                                            if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / buyTotalFees
                                            emit Transfer((0 / buyTotalFees), arg1, 1);
                                            if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                            if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                            emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                        else:
                                            if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                                revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            if not buyTotalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                            if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                            emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                            if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                            if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                            emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                        if buyTotalFees * arg3 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                        if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[614 len 26],
                                                        mem[666 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                        if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                        emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
                    if arg1 == owner:
                        if stor18[address(arg1)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            if stor18[address(arg2)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                if stor8:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                    if not swapAndLiquifyEnabled:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                            if not buyTotalFees:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= 0 / buyTotalFees
                                            if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[1] += 0 / buyTotalFees
                                            emit Transfer((0 / buyTotalFees), arg1, 1);
                                            if 0 / buyTotalFees > 0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(arg1)] += 0 / buyTotalFees
                                            if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                            emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[614 len 26],
                                                            mem[666 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not buyTotalFees * arg3 / 100:
                                                if not buyTotalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / buyTotalFees
                                                emit Transfer((0 / buyTotalFees), arg1, 1);
                                                if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                                if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                                emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                            else:
                                                if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                                    revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                if not buyTotalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                                if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                                if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                                emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                            if buyTotalFees * arg3 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not arg1:
                                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                            if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[614 len 26],
                                                            mem[666 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                            if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                            emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
                        if arg2 == owner:
                            if stor18[address(arg1)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                if stor18[address(arg2)]:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                    if stor8:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                        if not swapAndLiquifyEnabled:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                                if not buyTotalFees:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[1] += 0 / buyTotalFees
                                                emit Transfer((0 / buyTotalFees), arg1, 1);
                                                if 0 / buyTotalFees > 0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(arg1)] += 0 / buyTotalFees
                                                if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                                emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[614 len 26],
                                                                mem[666 len 6]
                                                balanceOf[address(arg1)] -= arg3
                                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if not buyTotalFees * arg3 / 100:
                                                    if not buyTotalFees:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                    if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / buyTotalFees
                                                    emit Transfer((0 / buyTotalFees), arg1, 1);
                                                    if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                                    if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                                    emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                                else:
                                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                                        revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                    if not buyTotalFees:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                    if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                    emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                                    if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                                    if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                                    emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                                if buyTotalFees * arg3 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[614 len 26],
                                                                mem[666 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                                if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                                emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
                            if not swapAndLiquifyEnabled:
                                if stor18[address(arg1)]:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                    if stor18[address(arg2)]:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                        if stor8:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                            if not swapAndLiquifyEnabled:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                                                    if not buyTotalFees:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                    if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[294 len 26],
                                                                    mem[346 len 6]
                                                    balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                    if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / buyTotalFees
                                                    emit Transfer((0 / buyTotalFees), arg1, 1);
                                                    if 0 / buyTotalFees > 0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(arg1)] += 0 / buyTotalFees
                                                    if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                                    emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                                    if 0 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                    if not arg2:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                    if arg3 > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[614 len 26],
                                                                    mem[666 len 6]
                                                    balanceOf[address(arg1)] -= arg3
                                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if not buyTotalFees * arg3 / 100:
                                                        if not buyTotalFees:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                        if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / buyTotalFees
                                                        emit Transfer((0 / buyTotalFees), arg1, 1);
                                                        if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                                        emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                                    else:
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                                            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                        if not buyTotalFees:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[294 len 26],
                                                                        mem[346 len 6]
                                                        balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                        if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                        emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[454 len 26],
                                                                        mem[506 len 6]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                                        emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                                    if buyTotalFees * arg3 / 100 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                                                    if not arg2:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                                                    if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[614 len 26],
                                                                    mem[666 len 6]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                                    if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                                    emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
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
                                stor8 = 1
                                if not balanceOf[address(this.address)]:
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                                    allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                    emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                    mem[516 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0 / buyTotalFees, 0, 160, address(stor15), block.timestamp, 2, mem[516 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                    emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                    mem[676 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0 / buyTotalFees, 0, 0, 160, address(stor16), block.timestamp, 2, mem[676 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not buyTotalFees:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                                    allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                    emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                    mem[836 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0 / buyTotalFees, 0, 0, 160, address(stor17), block.timestamp, 2, mem[836 len 64]
                                else:
                                    if buyTotalFees * balanceOf[address(this.address)] / balanceOf[address(this.address)] != buyTotalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not buyTotalFees * balanceOf[address(this.address)] / 100:
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                                        allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                        emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[516 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / buyTotalFees, 0, 160, address(stor15), block.timestamp, 2, mem[516 len 64]
                                    else:
                                        if sub_88c2b779 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees * balanceOf[address(this.address)] / 100 != sub_88c2b779:
                                            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                                        allowance[address(this.address)][stor7] = sub_88c2b779 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees
                                        emit Approval((sub_88c2b779 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[516 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args sub_88c2b779 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees, 0, 160, address(stor15), block.timestamp, 2, mem[516 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not buyTotalFees * balanceOf[address(this.address)] / 100:
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                        emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[676 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / buyTotalFees, 0, 0, 160, address(stor16), block.timestamp, 2, mem[676 len 64]
                                    else:
                                        if sub_8e36d256 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees * balanceOf[address(this.address)] / 100 != sub_8e36d256:
                                            revert with 0, 32, 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor15)
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        allowance[address(this.address)][stor7] = sub_8e36d256 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees
                                        emit Approval((sub_8e36d256 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[676 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args sub_8e36d256 * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees, 0, 0, 160, address(stor16), block.timestamp, 2, mem[676 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not buyTotalFees * balanceOf[address(this.address)] / 100:
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                                        allowance[address(this.address)][stor7] = 0 / buyTotalFees
                                        emit Approval((0 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[836 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / buyTotalFees, 0, 0, 160, address(stor17), block.timestamp, 2, mem[836 len 64]
                                    else:
                                        if sub_bd17b93c * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees * balanceOf[address(this.address)] / 100 != sub_bd17b93c:
                                            revert with 0, '', 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor16)
                                        if not buyTotalFees:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not this.address:
                                            revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                                        if not uniswapV2RouterAddress:
                                            revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                                        allowance[address(this.address)][stor7] = sub_bd17b93c * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees
                                        emit Approval((sub_bd17b93c * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees), this.address, uniswapV2RouterAddress);
                                        mem[836 len 0] = None
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args sub_bd17b93c * buyTotalFees * balanceOf[address(this.address)] / 100 / buyTotalFees, 0, 0, 160, address(stor17), block.timestamp, 2, mem[836 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor8 = 0
                                if stor18[address(arg1)]:
                                    if not arg1:
                                        revert with 0, '', 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor17)
                                    if not arg2:
                                        revert with 0, '', 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor17)
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    'sERC20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    'wERC20: transfer amount exceeds allowanc',
                                                    Mask(64, -256, 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                                else:
                                    if stor18[address(arg2)]:
                                        if not arg1:
                                            revert with 0, '', 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor17)
                                        if not arg2:
                                            revert with 0, '', 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor17)
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'sERC20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        'wERC20: transfer amount exceeds allowanc',
                                                        Mask(64, -256, 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                                    else:
                                        if stor8:
                                            if not arg1:
                                                revert with 0, '', 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor17)
                                            if not arg2:
                                                revert with 0, '', 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor17)
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'sERC20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            'wERC20: transfer amount exceeds allowanc',
                                                            Mask(64, -256, 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                                        else:
                                            if not swapAndLiquifyEnabled:
                                                if not arg1:
                                                    revert with 0, '', 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor17)
                                                if not arg2:
                                                    revert with 0, '', 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor17)
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'sERC20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] -= arg3
                                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                emit Transfer(arg3, arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                'wERC20: transfer amount exceeds allowanc',
                                                                Mask(64, -256, 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[936 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[934 len 30]
                                            else:
                                                if not arg3:
                                                    if not buyTotalFees:
                                                        revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                                    if not arg1:
                                                        revert with 0, 'eERC20: transfer from the zero addres', mem[873 len 27]
                                                    if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[838 len 26],
                                                                    mem[890 len 6]
                                                    balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                    if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[1] += 0 / buyTotalFees
                                                    emit Transfer((0 / buyTotalFees), arg1, 1);
                                                    if 0 / buyTotalFees > 0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                    if -0 / buyTotalFees > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[998 len 26],
                                                                    mem[1050 len 6]
                                                    balanceOf[address(arg1)] += 0 / buyTotalFees
                                                    if -(0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = -(0 / buyTotalFees) + balanceOf[this.address]
                                                    emit Transfer(-(0 / buyTotalFees), arg1, this.address);
                                                    if 0 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                                    if not arg2:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                                    if arg3 > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1158 len 26],
                                                                    mem[1210 len 6]
                                                    balanceOf[address(arg1)] -= arg3
                                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if buyTotalFees * arg3 / arg3 != buyTotalFees:
                                                        revert with 0, '', 33, 0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor17)
                                                    if not buyTotalFees * arg3 / 100:
                                                        if not buyTotalFees:
                                                            revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                                        if not arg1:
                                                            revert with 0, 'eERC20: transfer from the zero addres', mem[873 len 27]
                                                        if 0 / buyTotalFees > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[838 len 26],
                                                                        mem[890 len 6]
                                                        balanceOf[address(arg1)] -= 0 / buyTotalFees
                                                        if (0 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += 0 / buyTotalFees
                                                        emit Transfer((0 / buyTotalFees), arg1, 1);
                                                        if 0 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[998 len 26],
                                                                        mem[1050 len 6]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (0 / buyTotalFees)
                                                        if (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (0 / buyTotalFees) + balanceOf[this.address]
                                                        emit Transfer(((buyTotalFees * arg3 / 100) - (0 / buyTotalFees)), arg1, this.address);
                                                    else:
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees * arg3 / 100 != blackHoleFee:
                                                            revert with 0, 'SSafeMath: multiplication overflo'
                                                        if not buyTotalFees:
                                                            revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                                        if not arg1:
                                                            revert with 0, 'eERC20: transfer from the zero addres', mem[873 len 27]
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[838 len 26],
                                                                        mem[890 len 6]
                                                        balanceOf[address(arg1)] -= blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                        if (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[1] < balanceOf[1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[1] += blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees
                                                        emit Transfer((blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees), arg1, 1);
                                                        if blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees > buyTotalFees * arg3 / 100:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if not arg1:
                                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                                        if not this.address:
                                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) > balanceOf[address(arg1)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                        mem[998 len 26],
                                                                        mem[1050 len 6]
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (buyTotalFees * arg3 / 100) + (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)
                                                        if (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = (buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees) + balanceOf[this.address]
                                                        emit Transfer(((buyTotalFees * arg3 / 100) - (blackHoleFee * buyTotalFees * arg3 / 100 / buyTotalFees)), arg1, this.address);
                                                    if buyTotalFees * arg3 / 100 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1193 len 27]
                                                    if not arg2:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1191 len 29]
                                                    if arg3 - (buyTotalFees * arg3 / 100) > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1158 len 26],
                                                                    mem[1210 len 6]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (buyTotalFees * arg3 / 100)
                                                    if arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = arg3 - (buyTotalFees * arg3 / 100) + balanceOf[arg2]
                                                    emit Transfer((arg3 - (buyTotalFees * arg3 / 100)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[1256 len 24],
                                                                mem[1304 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1384 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1382 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
