contract main {




// =====================  Runtime code  =====================


const DURATION = (2400 * 24 * 3600)


address owner;
address busdAddress;
uint256 contractStartTimestamp;
address devAddress;
mapping of uint256 sub_94e98d32;
uint256 sub_e5ae2e29;
address rewardTokenAddress;
uint256 initreward;
uint256 rewardRate;
uint256 sub_fcb685bc;
uint256 sub_369054aa;
mapping of uint256 sub_7afdddba;

function sub_18e4274d(?) payable {
    return sub_e5ae2e29
}

function sub_369054aa(?) payable {
    return sub_369054aa
}

function devAddress() payable {
    return devAddress
}

function busd() payable {
    return busdAddress
}

function contractStartTimestamp() payable {
    return contractStartTimestamp
}

function sub_7afdddba(?) payable {
    require calldata.size - 4 >= 32
    return sub_7afdddba[arg1]
}

function rewardRate() payable {
    return rewardRate
}

function owner() payable {
    return owner
}

function sub_94e98d32(?) payable {
    require calldata.size - 4 >= 32
    return sub_94e98d32[address(arg1)]
}

function initreward() payable {
    return initreward
}

function sub_e5ae2e29(?) payable {
    return sub_e5ae2e29
}

function sub_e94d881a(?) payable {
    require calldata.size - 4 >= 32
    return sub_94e98d32[arg1]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function sub_fcb685bc(?) payable {
    return sub_fcb685bc
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devAddress = arg1
}

function setBUSDAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    busdAddress = arg1
}

function liquidityGenerationOngoing() payable {
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    return (contractStartTimestamp + (72 * 24 * 3600) > block.timestamp)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getSecondsLeftInLiquidityGenerationEvent() payable {
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (72 * 24 * 3600) <= block.timestamp:
        revert with 0, 'Event over'
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > contractStartTimestamp + (72 * 24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    return (contractStartTimestamp + -block.timestamp + (72 * 24 * 3600))
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(busdAddress)
    staticcall busdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'LP creation failed'
    require ext_code.size(busdAddress)
    call busdAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ae3ed434(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (72 * 24 * 3600) > block.timestamp:
        revert with 0, 'Liquidity generation onging'
    sub_fcb685bc = block.timestamp
    if block.timestamp + (2400 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_369054aa = block.timestamp + (2400 * 24 * 3600)
    initreward = arg1
    rewardTokenAddress = arg2
    if not arg1:
        if not sub_e5ae2e29:
            revert with 0, 'SafeMath: division by zero'
        rewardRate = 0 / sub_e5ae2e29
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_e5ae2e29:
            revert with 0, 'SafeMath: division by zero'
        rewardRate = 10^18 * arg1 / 2400 * 24 * 3600 / sub_e5ae2e29
    emit RewardAdded(arg1);
}

function sub_25b6cc4b(?) payable {
    require calldata.size - 4 >= 32
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (72 * 24 * 3600) <= block.timestamp:
        revert with 0, 'Liquidity Generation Event over'
    if arg1 <= 0:
        revert with 0, 'Cannot add 0'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(busdAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(busdAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call busdAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + sub_94e98d32[msg.sender] < sub_94e98d32[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_94e98d32[msg.sender] += arg1
    if arg1 + sub_e5ae2e29 < sub_e5ae2e29:
        revert with 0, 'SafeMath: addition overflow'
    sub_e5ae2e29 += arg1
    emit LiquidityAddition(arg1, msg.sender);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_fcb685bc:
        return 0
    if block.timestamp < sub_369054aa:
        if sub_fcb685bc > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_94e98d32[address(arg1)]:
            if sub_7afdddba[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_7afdddba[address(arg1)]
        if rewardRate * sub_94e98d32[address(arg1)] / sub_94e98d32[address(arg1)] != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not rewardRate * sub_94e98d32[address(arg1)]:
            if sub_7afdddba[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_7afdddba[address(arg1)]
        if (block.timestamp * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / rewardRate * sub_94e98d32[address(arg1)] != block.timestamp - sub_fcb685bc:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_7afdddba[address(arg1)] > (block.timestamp * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((block.timestamp * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / 10^18) - sub_7afdddba[address(arg1)])
    if sub_fcb685bc > sub_369054aa:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_94e98d32[address(arg1)]:
        if sub_7afdddba[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_7afdddba[address(arg1)]
    if rewardRate * sub_94e98d32[address(arg1)] / sub_94e98d32[address(arg1)] != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not rewardRate * sub_94e98d32[address(arg1)]:
        if sub_7afdddba[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_7afdddba[address(arg1)]
    if (sub_369054aa * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / rewardRate * sub_94e98d32[address(arg1)] != sub_369054aa - sub_fcb685bc:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if sub_7afdddba[address(arg1)] > (sub_369054aa * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_369054aa * rewardRate * sub_94e98d32[address(arg1)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(arg1)]) / 10^18) - sub_7afdddba[address(arg1)])
}

function claim() payable {
    if contractStartTimestamp + (72 * 24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (72 * 24 * 3600) > block.timestamp:
        revert with 0, 'Liquidity generation onging'
    if block.timestamp <= sub_fcb685bc:
        revert with 0, 'not start'
    if block.timestamp >= sub_fcb685bc:
        if block.timestamp < sub_369054aa:
            if sub_fcb685bc > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_94e98d32[address(msg.sender)]:
                if sub_7afdddba[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_7afdddba[address(msg.sender)]:
                    if -sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7afdddba[msg.sender] -= sub_7afdddba[address(msg.sender)]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, -sub_7afdddba[address(msg.sender)]) >> 32
                    mem[516 len 0] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit RewardPaid(-sub_7afdddba[address(msg.sender)], msg.sender);
            else:
                if rewardRate * sub_94e98d32[address(msg.sender)] / sub_94e98d32[address(msg.sender)] != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not rewardRate * sub_94e98d32[address(msg.sender)]:
                    if sub_7afdddba[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_7afdddba[address(msg.sender)]:
                        if -sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7afdddba[msg.sender] -= sub_7afdddba[address(msg.sender)]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, -sub_7afdddba[address(msg.sender)]) >> 32
                        mem[516 len 0] = 0
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        emit RewardPaid(-sub_7afdddba[address(msg.sender)], msg.sender);
                else:
                    if (block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / rewardRate * sub_94e98d32[address(msg.sender)] != block.timestamp - sub_fcb685bc:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_7afdddba[address(msg.sender)] > (block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]:
                        if ((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7afdddba[msg.sender] = ((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]) >> 32
                        mem[516 len 0] = 0
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        emit RewardPaid((((block.timestamp * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]), msg.sender);
        else:
            if sub_fcb685bc > sub_369054aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_94e98d32[address(msg.sender)]:
                if sub_7afdddba[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_7afdddba[address(msg.sender)]:
                    if -sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7afdddba[msg.sender] -= sub_7afdddba[address(msg.sender)]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, -sub_7afdddba[address(msg.sender)]) >> 32
                    mem[516 len 0] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit RewardPaid(-sub_7afdddba[address(msg.sender)], msg.sender);
            else:
                if rewardRate * sub_94e98d32[address(msg.sender)] / sub_94e98d32[address(msg.sender)] != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not rewardRate * sub_94e98d32[address(msg.sender)]:
                    if sub_7afdddba[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_7afdddba[address(msg.sender)]:
                        if -sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7afdddba[msg.sender] -= sub_7afdddba[address(msg.sender)]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, -sub_7afdddba[address(msg.sender)]) >> 32
                        mem[516 len 0] = 0
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        emit RewardPaid(-sub_7afdddba[address(msg.sender)], msg.sender);
                else:
                    if (sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / rewardRate * sub_94e98d32[address(msg.sender)] != sub_369054aa - sub_fcb685bc:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_7afdddba[address(msg.sender)] > (sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]:
                        if ((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender] < sub_7afdddba[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7afdddba[msg.sender] = ((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)] + sub_7afdddba[msg.sender]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]) >> 32
                        mem[516 len 0] = 0
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        emit RewardPaid((((sub_369054aa * rewardRate * sub_94e98d32[address(msg.sender)]) - (sub_fcb685bc * rewardRate * sub_94e98d32[address(msg.sender)]) / 10^18) - sub_7afdddba[address(msg.sender)]), msg.sender);
}



}
