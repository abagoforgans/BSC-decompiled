contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - getReward()
#  - sub_6e071f17(?)
#  - sub_d43e4bd5(?)
#  - exit()
#
const DURATION = (720 * 24 * 3600)


address owner;
uint256 sub_772e1263;
address tokenAddress;
uint256 sub_0fedcb0e;
uint256 startDay;
uint256 sub_98084f70;
uint256 sub_d7513654;
uint256 endTime;
uint256 lastTime;
uint256 sub_f82b4b40;
mapping of uint256 userRewardPaid;
mapping of uint256 sub_73b6b16b;
uint256 total;
mapping of uint256 sub_ab0ad853;
mapping of uint8 stor14;
mapping of address userMap;
array of struct users;
mapping of uint8 stor17;
mapping of uint16 sub_69c0e1df;
mapping of uint256 sub_4956d4c6;
mapping of uint256 sub_d73928ec;
uint256 sub_f80924fe;
address lpTokenAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 initReward;
uint256 startTime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 level;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function startDay() payable {
    return startDay
}

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function sub_0fedcb0e(?) payable {
    return sub_0fedcb0e
}

function extraTime() payable {
    return sub_772e1263
}

function totalSupply() payable {
    return totalSupply
}

function userMap(address arg1) payable {
    require calldata.size - 4 >= 32
    return userMap[arg1]
}

function total() payable {
    return total
}

function endTime() payable {
    return endTime
}

function sub_4956d4c6(?) payable {
    require calldata.size - 4 >= 32
    return sub_4956d4c6[arg1]
}

function users(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < users[arg1].field_0
    return users[arg1][arg2].field_0
}

function lpToken() payable {
    return lpTokenAddress
}

function sub_69c0e1df(?) payable {
    require calldata.size - 4 >= 64
    return sub_69c0e1df[arg1][arg2]
}

function level() payable {
    return level
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_73b6b16b(?) payable {
    require calldata.size - 4 >= 32
    return sub_73b6b16b[arg1]
}

function sub_772e1263(?) payable {
    return sub_772e1263
}

function startTime() payable {
    return startTime
}

function rewardRate() payable {
    return rewardRate
}

function sub_878a059e(?) payable {
    require calldata.size - 4 >= 32
    return userMap[address(arg1)]
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function lastTime() payable {
    return lastTime
}

function sub_98084f70(?) payable {
    return sub_98084f70
}

function sub_99c6132d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function initReward() payable {
    return initReward
}

function sub_ab0ad853(?) payable {
    require calldata.size - 4 >= 32
    return sub_ab0ad853[arg1]
}

function sub_b8698540(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function userRewardPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPaid[arg1]
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function sub_d73928ec(?) payable {
    require calldata.size - 4 >= 32
    return sub_d73928ec[arg1]
}

function sub_d7513654(?) payable {
    return sub_d7513654
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function sub_f80924fe(?) payable {
    return sub_f80924fe
}

function sub_f82b4b40(?) payable {
    return sub_f82b4b40
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_56805a56(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_98084f70 = arg1
}

function sub_c467fcff(?) payable {
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_772e1263 + block.timestamp / 3600)
}

function sub_366d2dba(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenAddress = arg2
    lpTokenAddress = arg1
}

function setMinner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor17[address(arg1)] = uint8(arg2)
}

function sub_1c4179b1(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_772e1263 + (24 * 3600) < sub_772e1263:
        revert with 0, 'SafeMath: addition overflow'
    sub_772e1263 += 24 * 3600
}

function powerOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if 300 <= sub_ab0ad853[address(arg1)]:
        if stor14[address(arg1)]:
            return sub_ab0ad853[address(arg1)]
        else:
            return 0
    else:
        return 0
}

function currentDay() payable {
    if 96 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_772e1263 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600)
}

function lastTimeRewardApplicable() payable {
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < periodFinish:
        return (sub_772e1263 + block.timestamp)
    return periodFinish
}

function currentWeek() payable {
    if 96 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_772e1263 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600)
}

function sub_7954812c(?) payable {
    if 96 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_772e1263 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 72 * 24 * 3600)
}

function sub_634cae0e(?) payable {
    if 96 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_772e1263 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if 1 > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 168 * 24 * 3600) - 1)
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

function sub_f703adbf(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 != 1:
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addDays(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        if sub_772e1263 < sub_772e1263:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if 24 * 3600 * arg1 / arg1 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (24 * 3600 * arg1) + sub_772e1263 < sub_772e1263:
            revert with 0, 'SafeMath: addition overflow'
        sub_772e1263 += 24 * 3600 * arg1
}

function sub_0c3bbbf4(?) payable {
    require calldata.size - 4 >= 64
    if not stor17[msg.sender]:
        revert with 0, 'Not Authority'
    if sub_69c0e1df[address(arg1)][block.timestamp / 12 * 3600] < 2:
        sub_69c0e1df[address(arg1)][block.timestamp / 12 * 3600] = uint16(sub_69c0e1df[address(arg1)][block.timestamp / 12 * 3600] + 1)
        if arg2 + sub_4956d4c6[address(arg1)] < sub_4956d4c6[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_4956d4c6[address(arg1)] += arg2
        if arg2 + sub_f80924fe < sub_f80924fe:
            revert with 0, 'SafeMath: addition overflow'
        sub_f80924fe += arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function getInviter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not users[address(arg1)].field_0:
        mem[(32 * users[address(arg1)].field_0) + 128] = 32
        mem[(32 * users[address(arg1)].field_0) + 160] = users[address(arg1)].field_0
        mem[(32 * users[address(arg1)].field_0) + 192 len floor32(users[address(arg1)].field_0)] = mem[128 len floor32(users[address(arg1)].field_0)]
        return memory
          from (32 * users[address(arg1)].field_0) + 128
           len (96 * users[address(arg1)].field_0) + 64
    mem[128] = users[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * users[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = users[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * users[address(arg1)].field_0) + 192 len floor32(users[address(arg1)].field_0)] = mem[128 len floor32(users[address(arg1)].field_0)]
    return Array(len=users[address(arg1)].field_0, data=mem[128 len floor32(users[address(arg1)].field_0)], mem[(32 * users[address(arg1)].field_0) + floor32(users[address(arg1)].field_0) + 192 len (32 * users[address(arg1)].field_0) - floor32(users[address(arg1)].field_0)]), 
}

function sub_62fa1419(?) payable {
    if 96 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_772e1263 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
        if sub_98084f70 < sub_98084f70:
            revert with 0, 'SafeMath: addition overflow'
        return sub_98084f70
    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
        revert with 0, 'SafeMath: addition overflow'
    return ((sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70)
}

function rewardPerToken() payable {
    if not totalSupply:
        return rewardPerTokenStored
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < periodFinish:
        if lastUpdateTime > sub_772e1263 + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_772e1263 + block.timestamp - lastUpdateTime:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * initReward) - (lastUpdateTime * initReward):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply:
        if sub_772e1263 + block.timestamp < periodFinish:
            if lastUpdateTime > sub_772e1263 + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_772e1263 + block.timestamp - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * initReward) - (lastUpdateTime * initReward):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply
    if sub_772e1263 + block.timestamp < periodFinish:
        lastUpdateTime = sub_772e1263 + block.timestamp
    else:
        lastUpdateTime = periodFinish
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < periodFinish:
        revert with 0, 'not time1'
    initReward = arg1
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    lastUpdateTime = sub_772e1263 + block.timestamp
    periodFinish = sub_772e1263 + block.timestamp + 1
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < periodFinish:
        if lastUpdateTime > sub_772e1263 + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_772e1263 + block.timestamp - lastUpdateTime:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + (((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * initReward) - (lastUpdateTime * initReward):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if rewards[address(arg1)] + (((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function sub_6b3d490b(?) payable {
    require calldata.size - 4 >= 32
    if 0 == total:
        if userRewardPaid[address(arg1)] > sub_f82b4b40:
            revert with 0, 'SafeMath: subtraction overflow'
        if 300 > sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not stor14[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != sub_f82b4b40 - userRewardPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_73b6b16b[address(arg1)] + ((sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73b6b16b[address(arg1)] + ((sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < endTime:
        if lastTime > sub_772e1263 + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_772e1263 + block.timestamp - lastTime:
            if not total:
                revert with 0, 'SafeMath: division by zero'
            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                revert with 0, 'SafeMath: subtraction overflow'
            if 300 > sub_ab0ad853[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if not stor14[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if not sub_ab0ad853[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
        if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
            if not total:
                revert with 0, 'SafeMath: division by zero'
            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                revert with 0, 'SafeMath: subtraction overflow'
            if 300 > sub_ab0ad853[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if not stor14[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if not sub_ab0ad853[address(arg1)]:
                if sub_73b6b16b[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_73b6b16b[address(arg1)]
            if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
        if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not total:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPaid[address(arg1)] > ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
            revert with 0, 'SafeMath: subtraction overflow'
        if 300 > sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not stor14[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_73b6b16b[address(arg1)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73b6b16b[address(arg1)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
    if lastTime > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - lastTime:
        if not total:
            revert with 0, 'SafeMath: division by zero'
        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
            revert with 0, 'SafeMath: subtraction overflow'
        if 300 > sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not stor14[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
    if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
        if not total:
            revert with 0, 'SafeMath: division by zero'
        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
            revert with 0, 'SafeMath: subtraction overflow'
        if 300 > sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not stor14[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if not sub_ab0ad853[address(arg1)]:
            if sub_73b6b16b[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_73b6b16b[address(arg1)]
        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
    if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not total:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPaid[address(arg1)] > ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
        revert with 0, 'SafeMath: subtraction overflow'
    if 300 > sub_ab0ad853[address(arg1)]:
        if sub_73b6b16b[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_73b6b16b[address(arg1)]
    if not stor14[address(arg1)]:
        if sub_73b6b16b[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_73b6b16b[address(arg1)]
    if not sub_ab0ad853[address(arg1)]:
        if sub_73b6b16b[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_73b6b16b[address(arg1)]
    if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if sub_73b6b16b[address(arg1)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_73b6b16b[address(arg1)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18))
}

function sub_b55bfef3(?) payable {
    require calldata.size - 4 >= 32
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if 0 == total:
        if sub_772e1263 + block.timestamp < endTime:
            lastTime = sub_772e1263 + block.timestamp
        else:
            lastTime = endTime
        if msg.sender:
            if 0 == total:
                if userRewardPaid[address(msg.sender)] > sub_f82b4b40:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 300 > sub_ab0ad853[address(msg.sender)]:
                    if sub_73b6b16b[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if not stor14[address(msg.sender)]:
                        if sub_73b6b16b[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if sub_73b6b16b[address(msg.sender)] + ((sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_73b6b16b[address(msg.sender)] += (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < endTime:
                    if lastTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                    else:
                        if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                else:
                    if lastTime > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTime - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                    else:
                        if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
            userRewardPaid[address(msg.sender)] = sub_f82b4b40
    else:
        if sub_772e1263 + block.timestamp < endTime:
            if lastTime > sub_772e1263 + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_772e1263 + block.timestamp - lastTime:
                if not total:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f82b4b40 += 0 / total
            else:
                if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += 0 / total
                else:
                    if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total
        else:
            if lastTime > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if not endTime - lastTime:
                if not total:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f82b4b40 += 0 / total
            else:
                if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += 0 / total
                else:
                    if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total
        if sub_772e1263 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if sub_772e1263 + block.timestamp < endTime:
            lastTime = sub_772e1263 + block.timestamp
        else:
            lastTime = endTime
        if msg.sender:
            if 0 == total:
                if userRewardPaid[address(msg.sender)] > sub_f82b4b40:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 300 > sub_ab0ad853[address(msg.sender)]:
                    if sub_73b6b16b[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if not stor14[address(msg.sender)]:
                        if sub_73b6b16b[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_73b6b16b[address(msg.sender)] + ((sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_73b6b16b[address(msg.sender)] += (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < endTime:
                    if lastTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                    else:
                        if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                else:
                    if lastTime > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTime - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(msg.sender)]:
                            if sub_73b6b16b[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                    else:
                        if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + ((0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += (0 / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(msg.sender)] > ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(msg.sender)]:
                                if sub_73b6b16b[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(msg.sender)]:
                                    if sub_73b6b16b[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(msg.sender)]:
                                        if sub_73b6b16b[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / sub_ab0ad853[address(msg.sender)] != ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(msg.sender)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18) < ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(msg.sender)] += ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(msg.sender)]) + (sub_f82b4b40 * sub_ab0ad853[address(msg.sender)]) - (userRewardPaid[address(msg.sender)] * sub_ab0ad853[address(msg.sender)]) / 10^18
            userRewardPaid[address(msg.sender)] = sub_f82b4b40
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if sub_772e1263 + block.timestamp < endTime:
        revert with 0, 'not time'
    sub_d7513654 = arg1
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    lastTime = sub_772e1263 + block.timestamp
    endTime = sub_772e1263 + block.timestamp + 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupply:
        if sub_772e1263 + block.timestamp < periodFinish:
            lastUpdateTime = sub_772e1263 + block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if sub_772e1263 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if sub_772e1263 + block.timestamp <= startTime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender] += arg1
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[352 len 4] = uint32(arg1)
            call lpTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                uint32(arg1),
                                mem[356 len 4]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp <= startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[480 len 4] = uint32(arg1)
                call lpTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < periodFinish:
                    if lastUpdateTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastUpdateTime:
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not periodFinish - lastUpdateTime:
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * initReward) - (lastUpdateTime * initReward):
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp <= startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call lpTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
    else:
        if sub_772e1263 + block.timestamp < periodFinish:
            if lastUpdateTime > sub_772e1263 + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_772e1263 + block.timestamp - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * initReward) - (lastUpdateTime * initReward):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply
        if sub_772e1263 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if sub_772e1263 + block.timestamp < periodFinish:
            lastUpdateTime = sub_772e1263 + block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if sub_772e1263 + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if sub_772e1263 + block.timestamp <= startTime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender] += arg1
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = uint32(arg1)
            call lpTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp <= startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call lpTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < periodFinish:
                    if lastUpdateTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastUpdateTime:
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) / sub_772e1263 + block.timestamp - lastUpdateTime != initReward:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward):
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / (sub_772e1263 * initReward) + (block.timestamp * initReward) - (lastUpdateTime * initReward) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * sub_772e1263 * initReward) + (10^18 * block.timestamp * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not periodFinish - lastUpdateTime:
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (periodFinish * initReward) - (lastUpdateTime * initReward) / periodFinish - lastUpdateTime != initReward:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (periodFinish * initReward) - (lastUpdateTime * initReward):
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / (periodFinish * initReward) - (lastUpdateTime * initReward) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * initReward) - (10^18 * lastUpdateTime * initReward) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp <= startTime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[736 len 4] = uint32(arg1)
                call lpTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
    emit Staked(arg1, msg.sender);
}

function sub_91a6c619(?) payable {
    require calldata.size - 4 >= 32
    if sub_772e1263 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if 0 == total:
        if sub_772e1263 + block.timestamp < endTime:
            lastTime = sub_772e1263 + block.timestamp
        else:
            lastTime = endTime
        if not arg1:
            if tokenAddress != msg.sender:
                revert with 0, 'not auth'
            if 96 * 24 * 3600 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_772e1263 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                if sub_98084f70 < sub_98084f70:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_98084f70:
                    stor14[address(arg1)] = 0
                else:
                    stor14[address(arg1)] = 1
            else:
                if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                    stor14[address(arg1)] = 0
                else:
                    stor14[address(arg1)] = 1
        else:
            if 0 == total:
                if userRewardPaid[address(arg1)] > sub_f82b4b40:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 300 > sub_ab0ad853[address(arg1)]:
                    if sub_73b6b16b[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if not stor14[address(arg1)]:
                        if sub_73b6b16b[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if sub_73b6b16b[address(arg1)] + ((sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_73b6b16b[address(arg1)] += (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                userRewardPaid[address(arg1)] = sub_f82b4b40
                if tokenAddress != msg.sender:
                    revert with 0, 'not auth'
                if 96 * 24 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_772e1263 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                    if sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
                else:
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < endTime:
                    if lastTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                    else:
                        if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(arg1)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                else:
                    if lastTime > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTime - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                    else:
                        if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                        else:
                            if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_73b6b16b[address(arg1)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                userRewardPaid[address(arg1)] = sub_f82b4b40
                if tokenAddress != msg.sender:
                    revert with 0, 'not auth'
                if 96 * 24 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_772e1263 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                    if sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
                else:
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
    else:
        if sub_772e1263 + block.timestamp < endTime:
            if lastTime > sub_772e1263 + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_772e1263 + block.timestamp - lastTime:
                if not total:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f82b4b40 += 0 / total
            else:
                if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += 0 / total
                else:
                    if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total
        else:
            if lastTime > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if not endTime - lastTime:
                if not total:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f82b4b40 += 0 / total
            else:
                if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += 0 / total
                else:
                    if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not total:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f82b4b40 += (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total
        if sub_772e1263 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if sub_772e1263 + block.timestamp < endTime:
            lastTime = sub_772e1263 + block.timestamp
        else:
            lastTime = endTime
        if not arg1:
            if tokenAddress != msg.sender:
                revert with 0, 'not auth'
            if 96 * 24 * 3600 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_772e1263 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                if sub_98084f70 < sub_98084f70:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_98084f70:
                    stor14[address(arg1)] = 0
                else:
                    stor14[address(arg1)] = 1
            else:
                if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                    stor14[address(arg1)] = 0
                else:
                    stor14[address(arg1)] = 1
        else:
            if 0 == total:
                if userRewardPaid[address(arg1)] > sub_f82b4b40:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 300 > sub_ab0ad853[address(arg1)]:
                    if sub_73b6b16b[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if not stor14[address(arg1)]:
                        if sub_73b6b16b[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_73b6b16b[address(arg1)] + ((sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_73b6b16b[address(arg1)] += (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                userRewardPaid[address(arg1)] = sub_f82b4b40
                if tokenAddress != msg.sender:
                    revert with 0, 'not auth'
                if 96 * 24 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_772e1263 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                    if sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
                else:
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
            else:
                if sub_772e1263 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_772e1263 + block.timestamp < endTime:
                    if lastTime > sub_772e1263 + block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_772e1263 + block.timestamp - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                    else:
                        if (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) / sub_772e1263 + block.timestamp - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                        else:
                            if (10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (sub_772e1263 * sub_d7513654) + (block.timestamp * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(arg1)] + (((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += ((10^18 * sub_772e1263 * sub_d7513654) + (10^18 * block.timestamp * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                else:
                    if lastTime > endTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTime - lastTime:
                        if not total:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 300 > sub_ab0ad853[address(arg1)]:
                            if sub_73b6b16b[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not stor14[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_ab0ad853[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                    else:
                        if (endTime * sub_d7513654) - (lastTime * sub_d7513654) / endTime - lastTime != sub_d7513654:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (endTime * sub_d7513654) - (lastTime * sub_d7513654):
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > (0 / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != (0 / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(arg1)] + ((0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += (0 / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                        else:
                            if (10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / (endTime * sub_d7513654) - (lastTime * sub_d7513654) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not total:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 < sub_f82b4b40:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPaid[address(arg1)] > ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 300 > sub_ab0ad853[address(arg1)]:
                                if sub_73b6b16b[address(arg1)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not stor14[address(arg1)]:
                                    if sub_73b6b16b[address(arg1)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_ab0ad853[address(arg1)]:
                                        if sub_73b6b16b[address(arg1)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / sub_ab0ad853[address(arg1)] != ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total) + sub_f82b4b40 - userRewardPaid[address(arg1)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_73b6b16b[address(arg1)] + (((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18) < ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_73b6b16b[address(arg1)] += ((10^18 * endTime * sub_d7513654) - (10^18 * lastTime * sub_d7513654) / total * sub_ab0ad853[address(arg1)]) + (sub_f82b4b40 * sub_ab0ad853[address(arg1)]) - (userRewardPaid[address(arg1)] * sub_ab0ad853[address(arg1)]) / 10^18
                userRewardPaid[address(arg1)] = sub_f82b4b40
                if tokenAddress != msg.sender:
                    revert with 0, 'not auth'
                if 96 * 24 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_772e1263 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if startDay > sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay:
                    if sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
                else:
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) / (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600) - startDay != sub_98084f70 / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                    if (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70 < sub_98084f70:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (sub_772e1263 + block.timestamp - (96 * 24 * 3600) / 24 * 3600 * sub_98084f70 / 100) - (startDay * sub_98084f70 / 100) + sub_98084f70:
                        stor14[address(arg1)] = 0
                    else:
                        stor14[address(arg1)] = 1
}



}
