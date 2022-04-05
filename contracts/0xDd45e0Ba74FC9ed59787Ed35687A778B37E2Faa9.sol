contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 85000 * 10^18

const BLOCKS_PER_WEEK = (56 * 3600)


address operatorAddress;
address sbdoAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
uint256 sub_07f7d757;
uint256 runningBlocks;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;

function sub_07f7d757(?) payable {
    return sub_07f7d757
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_1024)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function operator() payable {
    return operatorAddress
}

function runningBlocks() payable {
    return runningBlocks
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sbdo() payable {
    return sbdoAddress
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe5368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    operatorAddress = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        return 0
    if arg2 < endBlock:
        if arg2 <= startBlock:
            return 0
        if arg1 > startBlock:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2 - arg1:
                return 0
            if (arg2 * sub_07f7d757) - (arg1 * sub_07f7d757) / arg2 - arg1 != sub_07f7d757:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return ((arg2 * sub_07f7d757) - (arg1 * sub_07f7d757))
        if startBlock > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - startBlock:
            return 0
        if (arg2 * sub_07f7d757) - (startBlock * sub_07f7d757) / arg2 - startBlock != sub_07f7d757:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * sub_07f7d757) - (startBlock * sub_07f7d757))
    if arg1 >= endBlock:
        return 0
    if arg1 > startBlock:
        if arg1 > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not endBlock - arg1:
            return 0
        if (endBlock * sub_07f7d757) - (arg1 * sub_07f7d757) / endBlock - arg1 != sub_07f7d757:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((endBlock * sub_07f7d757) - (arg1 * sub_07f7d757))
    if startBlock > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endBlock - startBlock:
        return 0
    if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((endBlock * sub_07f7d757) - (startBlock * sub_07f7d757))
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe5368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    if block.number >= endBlock + (1456 * 3600):
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
    else:
        if sbdoAddress == arg1:
            revert with 0, 'sbdo'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 2
            if poolInfo[idx].field_0 == arg1:
                revert with 0, 'pool.lpToken'
            idx = idx + 1
            continue 
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not poolInfo[arg1].field_1024:
                poolInfo[arg1].field_1024 = 1
                if poolInfo[arg1].field_256 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint:
                if poolInfo[arg1].field_512 >= block.number:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < endBlock:
                        if block.number <= startBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > startBlock:
                                if poolInfo[arg1].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[arg1].field_512:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) / block.number - poolInfo[arg1].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if startBlock > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - startBlock:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= endBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > startBlock:
                                if poolInfo[arg1].field_512 > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - poolInfo[arg1].field_512:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) / endBlock - poolInfo[arg1].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if startBlock > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - startBlock:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingShare(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.number:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < endBlock:
        if block.number <= startBlock:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > startBlock:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) / block.number - poolInfo[arg1].field_512 != sub_07f7d757:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757):
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / (block.number * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - startBlock:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.number * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= endBlock:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > startBlock:
        if poolInfo[arg1].field_512 > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not endBlock - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) / endBlock - poolInfo[arg1].field_512 != sub_07f7d757:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / (endBlock * sub_07f7d757) - (poolInfo[arg1].field_512 * sub_07f7d757) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if startBlock > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endBlock - startBlock:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (endBlock * sub_07f7d757 * poolInfo[arg1].field_256) - (startBlock * sub_07f7d757 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1024:
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1387] = 26
                mem[_1387 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1387 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1508] = 26
                        mem[_1508 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1508 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1519] = 26
                        mem[_1519 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1519 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number < endBlock:
                    if block.number <= startBlock:
                        _1400 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1400] = 26
                        mem[_1400 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1400 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1531] = 26
                                mem[_1531 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1531 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1548 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1548] = 26
                                mem[_1548 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1548 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1371 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1371] = 30
                            mem[_1371 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _1375 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1375 + 68] = mem[idx + _1371 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1375 + 68] = mem[_1375 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1375 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                _1527 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1527] = 26
                                mem[_1527 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1527 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1930 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1930] = 26
                                        mem[_1930 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1930 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1978 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1978] = 26
                                        mem[_1978 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1978 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1546 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1546] = 26
                                    mem[_1546 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1546 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _1977 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1977] = 26
                                            mem[_1977 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1977 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2022 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2022] = 26
                                            mem[_2022 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2022 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1560 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1560] = 26
                                    mem[_1560 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1560 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2021 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2021] = 26
                                            mem[_2021 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2021 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2059 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2059] = 26
                                            mem[_2059 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2059 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1372 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1372] = 30
                            mem[_1372 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > block.number:
                                _1378 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1378 + 68] = mem[idx + _1372 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1378 + 68] = mem[_1378 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1378 + -mem[64] + 100
                            if not block.number - startBlock:
                                _1530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1530] = 26
                                mem[_1530 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1530 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1933 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1933] = 26
                                        mem[_1933 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1933 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1982 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1982] = 26
                                        mem[_1982 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1982 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1547 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1547] = 26
                                    mem[_1547 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1547 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _1981 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1981] = 26
                                            mem[_1981 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1981 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2027 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2027] = 26
                                            mem[_2027 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2027 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1564 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1564] = 26
                                    mem[_1564 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1564 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2026 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2026] = 26
                                            mem[_2026 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2026 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2067 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2067] = 26
                                            mem[_2067 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2067 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        _1405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1405] = 26
                        mem[_1405 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1405 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1538 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1538] = 26
                                mem[_1538 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1538 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1551] = 26
                                mem[_1551 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1551 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1373] = 30
                            mem[_1373 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > endBlock:
                                _1381 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1381 + 68] = mem[idx + _1373 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1381 + 68] = mem[_1381 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1381 + -mem[64] + 100
                            if not endBlock - poolInfo[idx].field_512:
                                _1534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1534] = 26
                                mem[_1534 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1534 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1936 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1936] = 26
                                        mem[_1936 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1936 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1986 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1986] = 26
                                        mem[_1986 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1986 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1549] = 26
                                    mem[_1549 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1549 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _1985 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1985] = 26
                                            mem[_1985 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1985 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2032 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2032] = 26
                                            mem[_2032 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2032 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1571 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1571] = 26
                                    mem[_1571 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1571 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2031 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2031] = 26
                                            mem[_2031 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2031 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2075 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2075] = 26
                                            mem[_2075 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2075 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1374] = 30
                            mem[_1374 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > endBlock:
                                _1384 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1384 + 68] = mem[idx + _1374 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1384 + 68] = mem[_1384 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1384 + -mem[64] + 100
                            if not endBlock - startBlock:
                                _1537 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1537] = 26
                                mem[_1537 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1537 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1939 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1939] = 26
                                        mem[_1939 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1939 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1990 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1990] = 26
                                        mem[_1990 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1990 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1550 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1550] = 26
                                    mem[_1550 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1550 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _1989 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1989] = 26
                                            mem[_1989 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _1989 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2037 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2037] = 26
                                            mem[_2037 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2037 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1575 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1575] = 26
                                    mem[_1575 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1575 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2036 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2036] = 26
                                            mem[_2036 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2036 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2083] = 26
                                            mem[_2083 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2083 + 32]
                                                idx = idx + 32
                                                continue 
        else:
            poolInfo[idx].field_1024 = 1
            if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint += poolInfo[idx].field_256
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1434 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1434] = 26
                mem[_1434 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1434 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1585] = 26
                        mem[_1585 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1585 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1618 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1618] = 26
                        mem[_1618 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1618 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number < endBlock:
                    if block.number <= startBlock:
                        _1461 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1461] = 26
                        mem[_1461 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1461 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1659 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1659] = 26
                                mem[_1659 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1659 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1705] = 26
                                mem[_1705 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1705 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1392] = 30
                            mem[_1392 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _1414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1414 + 68] = mem[idx + _1392 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1414 + 68] = mem[_1414 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1414 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                _1655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1655] = 26
                                mem[_1655 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1655 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2145 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2145] = 26
                                        mem[_2145 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2145 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2202 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2202] = 26
                                        mem[_2202 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2202 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1703 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1703] = 26
                                    mem[_1703 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1703 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2201 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2201] = 26
                                            mem[_2201 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2201 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2260 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2260] = 26
                                            mem[_2260 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2260 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1748 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1748] = 26
                                    mem[_1748 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1748 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2259 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2259] = 26
                                            mem[_2259 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2259 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2331 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2331] = 26
                                            mem[_2331 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2331 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1393 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1393] = 30
                            mem[_1393 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > block.number:
                                _1417 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1417 + 68] = mem[idx + _1393 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1417 + 68] = mem[_1417 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1417 + -mem[64] + 100
                            if not block.number - startBlock:
                                _1658 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1658] = 26
                                mem[_1658 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1658 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2148 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2148] = 26
                                        mem[_2148 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2148 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2206 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2206] = 26
                                        mem[_2206 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2206 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1704 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1704] = 26
                                    mem[_1704 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1704 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2205 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2205] = 26
                                            mem[_2205 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2205 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2265 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2265] = 26
                                            mem[_2265 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2265 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1752 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1752] = 26
                                    mem[_1752 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1752 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2264 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2264] = 26
                                            mem[_2264 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2264 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2339 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2339] = 26
                                            mem[_2339 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2339 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        _1466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1466] = 26
                        mem[_1466 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1466 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1666 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1666] = 26
                                mem[_1666 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1666 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1708 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1708] = 26
                                mem[_1708 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1708 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1394 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1394] = 30
                            mem[_1394 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > endBlock:
                                _1420 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1420 + 68] = mem[idx + _1394 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1420 + 68] = mem[_1420 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1420 + -mem[64] + 100
                            if not endBlock - poolInfo[idx].field_512:
                                _1662 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1662] = 26
                                mem[_1662 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1662 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2151 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2151] = 26
                                        mem[_2151 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2151 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2210 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2210] = 26
                                        mem[_2210 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2210 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1706 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1706] = 26
                                    mem[_1706 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1706 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2209 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2209] = 26
                                            mem[_2209 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2209 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2270 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2270] = 26
                                            mem[_2270 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2270 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1759 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1759] = 26
                                    mem[_1759 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1759 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2269 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2269] = 26
                                            mem[_2269 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2269 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2347 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2347] = 26
                                            mem[_2347 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2347 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1395] = 30
                            mem[_1395 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > endBlock:
                                _1423 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1423 + 68] = mem[idx + _1395 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1423 + 68] = mem[_1423 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1423 + -mem[64] + 100
                            if not endBlock - startBlock:
                                _1665 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1665] = 26
                                mem[_1665 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1665 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2154 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2154] = 26
                                        mem[_2154 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2154 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2214 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2214] = 26
                                        mem[_2214 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2214 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1707 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1707] = 26
                                    mem[_1707 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1707 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2213 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2213] = 26
                                            mem[_2213 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2213 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2275 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2275] = 26
                                            mem[_2275 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2275 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1763 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1763] = 26
                                    mem[_1763 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1763 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2274 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2274] = 26
                                            mem[_2274 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2274 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2355 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2355] = 26
                                            mem[_2355 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2355 + 32]
                                                idx = idx + 32
                                                continue 
        revert with 0, 'SafeMath: division by zero'
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe5368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1024:
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1411] = 26
                mem[_1411 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1411 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 26
                        mem[_1532 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1532 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1543] = 26
                        mem[_1543 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1543 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number < endBlock:
                    if block.number <= startBlock:
                        _1424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1424] = 26
                        mem[_1424 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1424 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1555 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1555] = 26
                                mem[_1555 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1555 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1572 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1572] = 26
                                mem[_1572 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1572 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1395] = 30
                            mem[_1395 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _1399 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1399 + 68] = mem[idx + _1395 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1399 + 68] = mem[_1399 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1399 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                _1551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1551] = 26
                                mem[_1551 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1551 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1954 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1954] = 26
                                        mem[_1954 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1954 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2002] = 26
                                        mem[_2002 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2002 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1570 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1570] = 26
                                    mem[_1570 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1570 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2001 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2001] = 26
                                            mem[_2001 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2001 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2046 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2046] = 26
                                            mem[_2046 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2046 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1584 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1584] = 26
                                    mem[_1584 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1584 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2045 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2045] = 26
                                            mem[_2045 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2045 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2083] = 26
                                            mem[_2083 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2083 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1396 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1396] = 30
                            mem[_1396 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > block.number:
                                _1402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1402 + 68] = mem[idx + _1396 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1402 + 68] = mem[_1402 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1402 + -mem[64] + 100
                            if not block.number - startBlock:
                                _1554 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1554] = 26
                                mem[_1554 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1554 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1957 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1957] = 26
                                        mem[_1957 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1957 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2006 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2006] = 26
                                        mem[_2006 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2006 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1571 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1571] = 26
                                    mem[_1571 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1571 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2005] = 26
                                            mem[_2005 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2005 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2051 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2051] = 26
                                            mem[_2051 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2051 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1588 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1588] = 26
                                    mem[_1588 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1588 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2050 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2050] = 26
                                            mem[_2050 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2050 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2091 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2091] = 26
                                            mem[_2091 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2091 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        _1429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1429] = 26
                        mem[_1429 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1429 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1562] = 26
                                mem[_1562 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1562 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1575 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1575] = 26
                                mem[_1575 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1575 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1397] = 30
                            mem[_1397 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > endBlock:
                                _1405 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1405 + 68] = mem[idx + _1397 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1405 + 68] = mem[_1405 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1405 + -mem[64] + 100
                            if not endBlock - poolInfo[idx].field_512:
                                _1558 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1558] = 26
                                mem[_1558 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1558 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1960 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1960] = 26
                                        mem[_1960 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1960 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2010 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2010] = 26
                                        mem[_2010 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2010 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1573 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1573] = 26
                                    mem[_1573 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1573 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2009 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2009] = 26
                                            mem[_2009 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2009 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2056 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2056] = 26
                                            mem[_2056 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2056 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1595 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1595] = 26
                                    mem[_1595 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1595 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2055 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2055] = 26
                                            mem[_2055 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2055 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2099 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2099] = 26
                                            mem[_2099 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2099 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1398 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1398] = 30
                            mem[_1398 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > endBlock:
                                _1408 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1408 + 68] = mem[idx + _1398 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1408 + 68] = mem[_1408 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1408 + -mem[64] + 100
                            if not endBlock - startBlock:
                                _1561 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1561] = 26
                                mem[_1561 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1561 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1963 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1963] = 26
                                        mem[_1963 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1963 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2014 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2014] = 26
                                        mem[_2014 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2014 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1574 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1574] = 26
                                    mem[_1574 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1574 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2013 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2013] = 26
                                            mem[_2013 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2013 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2061 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2061] = 26
                                            mem[_2061 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2061 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1599 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1599] = 26
                                    mem[_1599 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1599 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2060 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2060] = 26
                                            mem[_2060 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2060 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2107 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2107] = 26
                                            mem[_2107 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2107 + 32]
                                                idx = idx + 32
                                                continue 
        else:
            poolInfo[idx].field_1024 = 1
            if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint += poolInfo[idx].field_256
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1458] = 26
                mem[_1458 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1458 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1609] = 26
                        mem[_1609 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1609 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1642] = 26
                        mem[_1642 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1642 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number < endBlock:
                    if block.number <= startBlock:
                        _1485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1485] = 26
                        mem[_1485 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1485 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1683] = 26
                                mem[_1683 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1683 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1729 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1729] = 26
                                mem[_1729 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1729 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1416] = 30
                            mem[_1416 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.number:
                                _1438 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1438 + 68] = mem[idx + _1416 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1438 + 68] = mem[_1438 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1438 + -mem[64] + 100
                            if not block.number - poolInfo[idx].field_512:
                                _1679 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1679] = 26
                                mem[_1679 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1679 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2169 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2169] = 26
                                        mem[_2169 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2169 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2226 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2226] = 26
                                        mem[_2226 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2226 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1727 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1727] = 26
                                    mem[_1727 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1727 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2225 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2225] = 26
                                            mem[_2225 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2225 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2284 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2284] = 26
                                            mem[_2284 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2284 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1772 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1772] = 26
                                    mem[_1772 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1772 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2283 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2283] = 26
                                            mem[_2283 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2283 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2355 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2355] = 26
                                            mem[_2355 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2355 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1417] = 30
                            mem[_1417 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > block.number:
                                _1441 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1441 + 68] = mem[idx + _1417 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1441 + 68] = mem[_1441 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1441 + -mem[64] + 100
                            if not block.number - startBlock:
                                _1682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1682] = 26
                                mem[_1682 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1682 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2172 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2172] = 26
                                        mem[_2172 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2172 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2230 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2230] = 26
                                        mem[_2230 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2230 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1728 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1728] = 26
                                    mem[_1728 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1728 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2229 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2229] = 26
                                            mem[_2229 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2229 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2289 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2289] = 26
                                            mem[_2289 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2289 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1776 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1776] = 26
                                    mem[_1776 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1776 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2288 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2288] = 26
                                            mem[_2288 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2288 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2363 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2363] = 26
                                            mem[_2363 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2363 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= endBlock:
                        _1490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1490] = 26
                        mem[_1490 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1490 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1690 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1690] = 26
                                mem[_1690 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1690 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1732] = 26
                                mem[_1732 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1732 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > startBlock:
                            _1418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1418] = 30
                            mem[_1418 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > endBlock:
                                _1444 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1444 + 68] = mem[idx + _1418 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1444 + 68] = mem[_1444 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1444 + -mem[64] + 100
                            if not endBlock - poolInfo[idx].field_512:
                                _1686 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1686] = 26
                                mem[_1686 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1686 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2175 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2175] = 26
                                        mem[_2175 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2175 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2234 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2234] = 26
                                        mem[_2234 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2234 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                    _1730 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1730] = 26
                                    mem[_1730 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1730 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2233 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2233] = 26
                                            mem[_2233 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2233 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2294 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2294] = 26
                                            mem[_2294 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2294 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1783 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1783] = 26
                                    mem[_1783 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1783 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2293 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2293] = 26
                                            mem[_2293 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2293 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2371 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2371] = 26
                                            mem[_2371 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2371 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1419 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1419] = 30
                            mem[_1419 + 32] = 'SafeMath: subtraction overflow'
                            if startBlock > endBlock:
                                _1447 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1447 + 68] = mem[idx + _1419 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1447 + 68] = mem[_1447 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1447 + -mem[64] + 100
                            if not endBlock - startBlock:
                                _1689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1689] = 26
                                mem[_1689 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1689 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2178 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2178] = 26
                                        mem[_2178 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2178 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2238 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2238] = 26
                                        mem[_2238 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2238 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                    _1731 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1731] = 26
                                    mem[_1731 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1731 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2237 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2237] = 26
                                            mem[_2237 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2237 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2299 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2299] = 26
                                            mem[_2299 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2299 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1787 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1787] = 26
                                    mem[_1787 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1787 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2298 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2298] = 26
                                            mem[_2298 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2298 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2379 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2379] = 26
                                            mem[_2379 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2379 + 32]
                                                idx = idx + 32
                                                continue 
        revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe5368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'ShareRewardPool: existing pool?'
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 2
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1024:
                if not totalAllocPoint:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_512 >= block.number:
                    _3238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3238] = 26
                    mem[_3238 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3238 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _3359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3359] = 26
                            mem[_3359 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3359 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3370] = 26
                            mem[_3370 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3370 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number < endBlock:
                        if block.number <= startBlock:
                            _3251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3251] = 26
                            mem[_3251 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3251 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3382 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3382] = 26
                                    mem[_3382 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3382 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3399 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3399] = 26
                                    mem[_3399 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3399 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > startBlock:
                                _3222 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3222] = 30
                                mem[_3222 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.number:
                                    _3226 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3226 + 68] = mem[idx + _3222 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3226 + 68] = mem[_3226 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3226 + -mem[64] + 100
                                if not block.number - poolInfo[idx].field_512:
                                    _3378 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3378] = 26
                                    mem[_3378 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3378 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3781 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3781] = 26
                                            mem[_3781 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3781 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3829 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3829] = 26
                                            mem[_3829 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3829 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                        _3397 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3397] = 26
                                        mem[_3397 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3397 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3828 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3828] = 26
                                                mem[_3828 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3828 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3873 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3873] = 26
                                                mem[_3873 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3873 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3411 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3411] = 26
                                        mem[_3411 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3411 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3872 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3872] = 26
                                                mem[_3872 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3872 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3910 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3910] = 26
                                                mem[_3910 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3910 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3223] = 30
                                mem[_3223 + 32] = 'SafeMath: subtraction overflow'
                                if startBlock > block.number:
                                    _3229 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3229 + 68] = mem[idx + _3223 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3229 + 68] = mem[_3229 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3229 + -mem[64] + 100
                                if not block.number - startBlock:
                                    _3381 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3381] = 26
                                    mem[_3381 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3381 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3784 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3784] = 26
                                            mem[_3784 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3784 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3833 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3833] = 26
                                            mem[_3833 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3833 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        _3398 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3398] = 26
                                        mem[_3398 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3398 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3832 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3832] = 26
                                                mem[_3832 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3832 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3878 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3878] = 26
                                                mem[_3878 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3878 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3415 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3415] = 26
                                        mem[_3415 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3415 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3877 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3877] = 26
                                                mem[_3877 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3877 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3918 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3918] = 26
                                                mem[_3918 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3918 + 32]
                                                    idx = idx + 32
                                                    continue 
                    else:
                        if poolInfo[idx].field_512 >= endBlock:
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 26
                            mem[_3256 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3256 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3389 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3389] = 26
                                    mem[_3389 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3389 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3402 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3402] = 26
                                    mem[_3402 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3402 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > startBlock:
                                _3224 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3224] = 30
                                mem[_3224 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > endBlock:
                                    _3232 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3232 + 68] = mem[idx + _3224 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3232 + 68] = mem[_3232 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3232 + -mem[64] + 100
                                if not endBlock - poolInfo[idx].field_512:
                                    _3385 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3385] = 26
                                    mem[_3385 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3385 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3787 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3787] = 26
                                            mem[_3787 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3787 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3837 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3837] = 26
                                            mem[_3837 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3837 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                        _3400 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3400] = 26
                                        mem[_3400 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3400 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3836 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3836] = 26
                                                mem[_3836 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3836 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3883 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3883] = 26
                                                mem[_3883 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3883 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3422 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3422] = 26
                                        mem[_3422 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3422 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3882 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3882] = 26
                                                mem[_3882 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3882 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3926 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3926] = 26
                                                mem[_3926 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3926 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3225 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3225] = 30
                                mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                                if startBlock > endBlock:
                                    _3235 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3235 + 68] = mem[idx + _3225 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3235 + 68] = mem[_3235 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3235 + -mem[64] + 100
                                if not endBlock - startBlock:
                                    _3388 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3388] = 26
                                    mem[_3388 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3388 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3790 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3790] = 26
                                            mem[_3790 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3790 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3841 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3841] = 26
                                            mem[_3841 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3841 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        _3401 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3401] = 26
                                        mem[_3401 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3401 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3840 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3840] = 26
                                                mem[_3840 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3840 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3888 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3888] = 26
                                                mem[_3888 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3888 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3426 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3426] = 26
                                        mem[_3426 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3426 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3887 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3887] = 26
                                                mem[_3887 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3887 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3934 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3934] = 26
                                                mem[_3934 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3934 + 32]
                                                    idx = idx + 32
                                                    continue 
            else:
                poolInfo[idx].field_1024 = 1
                if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[idx].field_256
                if not totalAllocPoint:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_512 >= block.number:
                    _3285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3285] = 26
                    mem[_3285 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3285 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _3436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3436] = 26
                            mem[_3436 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3436 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3469 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3469] = 26
                            mem[_3469 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3469 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.number < endBlock:
                        if block.number <= startBlock:
                            _3312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3312] = 26
                            mem[_3312 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3312 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3510 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3510] = 26
                                    mem[_3510 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3510 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3556 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3556] = 26
                                    mem[_3556 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3556 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > startBlock:
                                _3243 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3243] = 30
                                mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.number:
                                    _3265 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3265 + 68] = mem[idx + _3243 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3265 + 68] = mem[_3265 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3265 + -mem[64] + 100
                                if not block.number - poolInfo[idx].field_512:
                                    _3506 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3506] = 26
                                    mem[_3506 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3506 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3996 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3996] = 26
                                            mem[_3996 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3996 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4053 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4053] = 26
                                            mem[_4053 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4053 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / block.number - poolInfo[idx].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                        _3554 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3554] = 26
                                        mem[_3554 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3554 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4052 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4052] = 26
                                                mem[_4052 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4052 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4111 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4111] = 26
                                                mem[_4111 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4111 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3599] = 26
                                        mem[_3599 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3599 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4110 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4110] = 26
                                                mem[_4110 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4110 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4182 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4182] = 26
                                                mem[_4182 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4182 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3244] = 30
                                mem[_3244 + 32] = 'SafeMath: subtraction overflow'
                                if startBlock > block.number:
                                    _3268 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3268 + 68] = mem[idx + _3244 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3268 + 68] = mem[_3268 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3268 + -mem[64] + 100
                                if not block.number - startBlock:
                                    _3509 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3509] = 26
                                    mem[_3509 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3509 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3999 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3999] = 26
                                            mem[_3999 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3999 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4057 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4057] = 26
                                            mem[_4057 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4057 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) / block.number - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.number * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        _3555 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3555] = 26
                                        mem[_3555 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3555 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4056 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4056] = 26
                                                mem[_4056 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4056 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4116 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4116] = 26
                                                mem[_4116 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4116 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (block.number * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3603 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3603] = 26
                                        mem[_3603 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3603 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4115 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4115] = 26
                                                mem[_4115 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4115 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4190 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4190] = 26
                                                mem[_4190 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4190 + 32]
                                                    idx = idx + 32
                                                    continue 
                    else:
                        if poolInfo[idx].field_512 >= endBlock:
                            _3317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3317] = 26
                            mem[_3317 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3317 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3517 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3517] = 26
                                    mem[_3517 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3517 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3559 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3559] = 26
                                    mem[_3559 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3559 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > startBlock:
                                _3245 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3245] = 30
                                mem[_3245 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > endBlock:
                                    _3271 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3271 + 68] = mem[idx + _3245 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3271 + 68] = mem[_3271 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3271 + -mem[64] + 100
                                if not endBlock - poolInfo[idx].field_512:
                                    _3513 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3513] = 26
                                    mem[_3513 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3513 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _4002 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4002] = 26
                                            mem[_4002 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4002 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4061 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4061] = 26
                                            mem[_4061 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4061 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) / endBlock - poolInfo[idx].field_512 != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757):
                                        _3557 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3557] = 26
                                        mem[_3557 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3557 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4060 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4060] = 26
                                                mem[_4060 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4060 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4121 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4121] = 26
                                                mem[_4121 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4121 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (poolInfo[idx].field_512 * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3610 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3610] = 26
                                        mem[_3610 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3610 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4120 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4120] = 26
                                                mem[_4120 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4120 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4198 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4198] = 26
                                                mem[_4198 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4198 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3246] = 30
                                mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                                if startBlock > endBlock:
                                    _3274 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3274 + 68] = mem[idx + _3246 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3274 + 68] = mem[_3274 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3274 + -mem[64] + 100
                                if not endBlock - startBlock:
                                    _3516 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3516] = 26
                                    mem[_3516 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3516 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _4005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4005] = 26
                                            mem[_4005 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4005 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4065 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4065] = 26
                                            mem[_4065 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.number
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4065 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) / endBlock - startBlock != sub_07f7d757:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757):
                                        _3558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3558] = 26
                                        mem[_3558 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3558 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4064 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4064] = 26
                                                mem[_4064 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4064 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4126 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4126] = 26
                                                mem[_4126 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4126 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / (endBlock * sub_07f7d757) - (startBlock * sub_07f7d757) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3614 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3614] = 26
                                        mem[_3614 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3614 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4125 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4125] = 26
                                                mem[_4125 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4125 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4206 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4206] = 26
                                                mem[_4206 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (endBlock * sub_07f7d757 * poolInfo[idx].field_256) - (startBlock * sub_07f7d757 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.number
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4206 + 32]
                                                    idx = idx + 32
                                                    continue 
            revert with 0, 'SafeMath: division by zero'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor4057[stor2.length] = arg1
    if block.number >= startBlock:
        if not arg4:
            stor4057[stor2.length] = block.number
            stor4057[stor2.length] = 0
            if block.number <= startBlock:
                stor4057[stor2.length] = uint8(block.number <= startBlock)
                if arg1 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                stor4057[stor2.length] = uint8(block.number <= block.number)
                if block.number <= block.number:
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.number:
                stor4057[stor2.length] = arg4
                stor4057[stor2.length] = 0
                if arg4 <= startBlock:
                    stor4057[stor2.length] = uint8(arg4 <= startBlock)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    stor4057[stor2.length] = uint8(arg4 <= block.number)
                    if arg4 <= block.number:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                stor4057[stor2.length] = block.number
                stor4057[stor2.length] = 0
                if block.number <= startBlock:
                    stor4057[stor2.length] = uint8(block.number <= startBlock)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    stor4057[stor2.length] = uint8(block.number <= block.number)
                    if block.number <= block.number:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg4:
            stor4057[stor2.length] = startBlock
            stor4057[stor2.length] = 0
            if startBlock <= startBlock:
                stor4057[stor2.length] = uint8(startBlock <= startBlock)
                if arg1 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                stor4057[stor2.length] = uint8(startBlock <= block.number)
                if startBlock <= block.number:
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= startBlock:
                stor4057[stor2.length] = arg4
                stor4057[stor2.length] = 0
                if arg4 <= startBlock:
                    stor4057[stor2.length] = uint8(arg4 <= startBlock)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    stor4057[stor2.length] = uint8(arg4 <= block.number)
                    if arg4 <= block.number:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                stor4057[stor2.length] = startBlock
                stor4057[stor2.length] = 0
                if startBlock <= startBlock:
                    stor4057[stor2.length] = uint8(startBlock <= startBlock)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    stor4057[stor2.length] = uint8(startBlock <= block.number)
                    if startBlock <= block.number:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}



}
