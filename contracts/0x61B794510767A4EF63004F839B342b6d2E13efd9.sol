contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint32 stor0;
uint128 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address targetAddress; offset 8
uint256 stor7;
mapping of struct stor8;
mapping of struct withdrawnDividendOf;
address underlyingAddress;
uint32 stor11;
address strategyAddress;
uint32 stor12;
address harvesterAddress;
uint256 stor12;
uint256 PERFORMANCE_FEE;
uint256 lastDistribution;
address timelockAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function harvester() payable {
    return address(harvesterAddress)
}

function paused() payable {
    return bool(paused)
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastDistribution() payable {
    return lastDistribution
}

function strategy() payable {
    return address(strategyAddress)
}

function withdrawnDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawnDividendOf[address(arg1)].field_0
}

function timelock() payable {
    return timelockAddress
}

function target() payable {
    return targetAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function PERFORMANCE_FEE() payable {
    return PERFORMANCE_FEE
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(harvesterAddress) = arg1
}

function changePerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10000
    PERFORMANCE_FEE = arg1
}

function calcTotalValue() payable {
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xa00251c6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function underlyingYield() payable {
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xa00251c6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - totalSupply)
}

function pauseContract(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
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

function salvageScraps(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != targetAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        return stor8[address(arg1)].field_128
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    return (Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128)
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function unclaimedProfit(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    require stor7
    if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require stor7 * balanceOf[address(arg1)] >= 0
    if stor8[address(arg1)].field_0 < 0:
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    else:
        if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
            require stor8[address(arg1)].field_0 < 0
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
    require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not stor7:
        require stor8[address(msg.sender)].field_0 >= stor8[address(msg.sender)].field_0
        require stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0
    else:
        require stor7
        if stor7 * arg2 / stor7 != arg2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        require stor7 * arg2 >= 0
        if stor8[address(msg.sender)].field_0 + (stor7 * arg2) < stor8[address(msg.sender)].field_0:
            require stor7 * arg2 < 0
            require stor8[address(msg.sender)].field_0 + (stor7 * arg2) < stor8[address(msg.sender)].field_0
        stor8[address(msg.sender)].field_0 += stor7 * arg2
        if stor7 * arg2 < 0:
            require stor8[address(arg1)].field_0 - (stor7 * arg2) > stor8[address(arg1)].field_0
        else:
            if stor8[address(arg1)].field_0 - (stor7 * arg2) > stor8[address(arg1)].field_0:
                require stor7 * arg2 < 0
                require stor8[address(arg1)].field_0 - (stor7 * arg2) > stor8[address(arg1)].field_0
        stor8[address(arg1)].field_0 += -1 * stor7 * arg2
    return 1
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(harvesterAddress)
    require totalSupply > 0
    require arg1 > 0
    if not arg1:
        require totalSupply
        if stor7 + (0 / totalSupply) < stor7:
            revert with 0, 'SafeMath: addition overflow'
        stor7 += 0 / totalSupply
    else:
        require arg1
        if arg1 << 128 / arg1 != 0x100000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require totalSupply
        if stor7 + (arg1 << 128 / totalSupply) < stor7:
            revert with 0, 'SafeMath: addition overflow'
        stor7 += arg1 << 128 / totalSupply
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(targetAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call targetAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit DividendsDistributed(arg1, msg.sender);
    lastDistribution = block.timestamp
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not stor7:
        require stor8[address(msg.sender)].field_0 >= stor8[address(msg.sender)].field_0
    else:
        require stor7
        if stor7 * arg1 / stor7 != arg1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
        require stor7 * arg1 >= 0
        if stor8[address(msg.sender)].field_0 + (stor7 * arg1) < stor8[address(msg.sender)].field_0:
            require stor7 * arg1 < 0
            require stor8[address(msg.sender)].field_0 + (stor7 * arg1) < stor8[address(msg.sender)].field_0
        stor8[address(msg.sender)].field_0 += stor7 * arg1
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).divest(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
    if ext_code.size(underlyingAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[420 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[484 len 0] = 0
    call underlyingAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[484 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[452]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 531 len 22]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if not stor7:
        require stor8[address(arg1)].field_0 >= stor8[address(arg1)].field_0
        require stor8[address(arg2)].field_0 <= stor8[address(arg2)].field_0
    else:
        require stor7
        if stor7 * arg3 / stor7 != arg3:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        require stor7 * arg3 >= 0
        if stor8[address(arg1)].field_0 + (stor7 * arg3) < stor8[address(arg1)].field_0:
            require stor7 * arg3 < 0
            require stor8[address(arg1)].field_0 + (stor7 * arg3) < stor8[address(arg1)].field_0
        stor8[address(arg1)].field_0 += stor7 * arg3
        if stor7 * arg3 < 0:
            require stor8[address(arg2)].field_0 - (stor7 * arg3) > stor8[address(arg2)].field_0
        else:
            if stor8[address(arg2)].field_0 - (stor7 * arg3) > stor8[address(arg2)].field_0:
                require stor7 * arg3 < 0
                require stor8[address(arg2)].field_0 - (stor7 * arg3) > stor8[address(arg2)].field_0
        stor8[address(arg2)].field_0 += -1 * stor7 * arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function setStrat(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not address(strategyAddress):
        require msg.sender == owner
        if not paused:
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        require msg.sender == timelockAddress
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).0xa00251c6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).divest(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(underlyingAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(arg1)
        call arg1.invest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            require ext_code.size(arg1)
            call arg1.0xa00251c6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0xa00251c6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
    address(strategyAddress) = arg1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(underlyingAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(strategyAddress), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call underlyingAddress with:
       funct uint32(stor11)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(strategyAddress), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).invest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if not stor7:
            require stor8[address(msg.sender)].field_0 <= stor8[address(msg.sender)].field_0
        else:
            require stor7
            if stor7 * arg1 / stor7 != arg1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            require stor7 * arg1 >= 0
            if stor8[address(msg.sender)].field_0 - (stor7 * arg1) > stor8[address(msg.sender)].field_0:
                require stor7 * arg1 < 0
                require stor8[address(msg.sender)].field_0 - (stor7 * arg1) > stor8[address(msg.sender)].field_0
            stor8[address(msg.sender)].field_0 += -1 * stor7 * arg1
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).invest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if not stor7:
            require stor8[address(msg.sender)].field_0 <= stor8[address(msg.sender)].field_0
        else:
            require stor7
            if stor7 * arg1 / stor7 != arg1:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            require stor7 * arg1 >= 0
            if stor8[address(msg.sender)].field_0 - (stor7 * arg1) > stor8[address(msg.sender)].field_0:
                require stor7 * arg1 < 0
                require stor8[address(msg.sender)].field_0 - (stor7 * arg1) > stor8[address(msg.sender)].field_0
            stor8[address(msg.sender)].field_0 += -1 * stor7 * arg1
}

function claimOnBehalf(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(harvesterAddress) != msg.sender:
        require msg.sender == owner
    if not stor7:
        require stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor8[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > 0:
            if stor8[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = stor8[address(arg1)].field_128
            emit DividendWithdrawn((stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(targetAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0) >> 32
            mem[388 len 0] = 0
            call targetAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, stor8[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
    else:
        require stor7
        if stor7 * balanceOf[address(arg1)] / stor7 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require stor7 * balanceOf[address(arg1)] >= 0
        if stor8[address(arg1)].field_0 < 0:
            require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
        else:
            if (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]:
                require stor8[address(arg1)].field_0 < 0
                require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 < stor7 * balanceOf[address(arg1)]
        require (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > 0:
            if Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128
            withdrawnDividendOf[address(arg1)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(targetAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, (Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0) >> 32
            mem[388 len 0] = 0
            call targetAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, (Mask(128, 128, (stor7 * balanceOf[address(arg1)]) + stor8[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
}

function claim() payable {
    if not stor7:
        require stor8[address(msg.sender)].field_0 >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > 0:
            if stor8[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = stor8[address(msg.sender)].field_128
            emit DividendWithdrawn((stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(targetAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0) >> 32
            mem[388 len 0] = 0
            call targetAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, stor8[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
    else:
        require stor7
        if stor7 * balanceOf[address(msg.sender)] / stor7 != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require stor7 * balanceOf[address(msg.sender)] >= 0
        if stor8[address(msg.sender)].field_0 < 0:
            require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]
        else:
            if (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]:
                require stor8[address(msg.sender)].field_0 < 0
                require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 < stor7 * balanceOf[address(msg.sender)]
        require (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0 >= 0
        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > 0:
            if Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128
            withdrawnDividendOf[address(msg.sender)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(targetAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0) >> 32
            mem[388 len 0] = 0
            call targetAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (Mask(128, 128, (stor7 * balanceOf[address(msg.sender)]) + stor8[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(harvesterAddress)
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xa00251c6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > ext_call.return_data[0] - totalSupply:
        revert with 0, 32, 34, 0x73416d6f756e74206c6172676572207468616e2067656e657261746564207969656c, mem[262 len 30]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).divest(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if PERFORMANCE_FEE <= 0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(underlyingAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1) >> 32
        mem[388 len 0] = 0
        call underlyingAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return arg1
    if not arg1:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
        if ext_code.size(underlyingAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
        mem[516 len 0] = 0
        call underlyingAddress with:
           funct uint32(stor0.field_0)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0) << 256, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 723 len 26]
        if ext_code.size(underlyingAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 617 len 64] = 0, address(harvesterAddress), Mask(224, 32, arg1) >> 32
        call underlyingAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args arg1, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 649]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        return arg1
    require arg1
    if arg1 * PERFORMANCE_FEE / arg1 != PERFORMANCE_FEE:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if arg1 * PERFORMANCE_FEE / 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
    if ext_code.size(underlyingAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg1 * PERFORMANCE_FEE / 10000) >> 32
    mem[516 len 0] = 0
    call underlyingAddress with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(224, 32, arg1 * PERFORMANCE_FEE / 10000) << 224, mem[516 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[484]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 563 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 723 len 26]
    if ext_code.size(underlyingAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 617 len 64] = 0, address(harvesterAddress), Mask(224, 32, arg1 - (arg1 * PERFORMANCE_FEE / 10000)) >> 32
    call underlyingAddress with:
       funct uint32(stor12)
         gas gas_remaining wei
        args arg1 - (arg1 * PERFORMANCE_FEE / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 649]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return (arg1 - (arg1 * PERFORMANCE_FEE / 10000))
}



}
