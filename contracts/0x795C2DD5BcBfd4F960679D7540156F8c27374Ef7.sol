contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 sub_900e3151;
address rewardTokenAddress;
uint32 stor3;
address rewardSenderAddress;
uint256 stor3;
uint256 rewardPerBlock;
uint256 sub_a32b9176;
uint256 sub_f9945e65;
uint256 sub_fac6f421;
array of struct poolInfo;
mapping of uint256 poolIndex;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function rewardSender() payable {
    return address(rewardSenderAddress)
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function sub_900e3151(?) payable {
    return sub_900e3151
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_a32b9176(?) payable {
    return sub_a32b9176
}

function poolIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolIndex[arg1]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function sub_f9945e65(?) payable {
    return sub_f9945e65
}

function sub_fac6f421(?) payable {
    return sub_fac6f421
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

function setRewardSender(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(rewardSenderAddress) = arg1
}

function setReduce(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= arg2 + arg1:
        revert with 0, 'passed cycle'
    sub_fac6f421 = arg1
    sub_a32b9176 = arg2
    sub_f9945e65 = arg3
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function updateReduce() payable {
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < sub_a32b9176 + sub_fac6f421:
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    sub_fac6f421 += sub_a32b9176
    if not rewardPerBlock:
        # nil
    else:
        if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
        s = sub_f9945e65 * rewardPerBlock
        while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
            if block.number < sub_a32b9176 + sub_fac6f421:
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            sub_fac6f421 += sub_a32b9176
            if not rewardPerBlock:
                rewardPerBlock = 0 / 100
                s = 0
                continue 
            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
            s = sub_f9945e65 * rewardPerBlock
            continue 
        revert with 0, 'SafeMath: addition overflow'
}

function pendingReward(uint256 arg1, address arg2) payable {
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
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if sub_900e3151 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_900e3151
                if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if sub_900e3151 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_900e3151
                if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_900e3151 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_900e3151
    if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= sub_a32b9176 + sub_fac6f421:
        if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
            revert with 0, 'SafeMath: addition overflow'
        sub_fac6f421 += sub_a32b9176
        if not rewardPerBlock:
            # nil
        else:
            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
            s = sub_f9945e65 * rewardPerBlock
            while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                if block.number >= sub_a32b9176 + sub_fac6f421:
                    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fac6f421 += sub_a32b9176
                    if not rewardPerBlock:
                        rewardPerBlock = 0 / 100
                        s = 0
                        continue 
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    continue 
                require arg1 < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[arg1].field_512:
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                mem[132] = address(rewardSenderAddress)
                                mem[164] = this.address
                                mem[196] = 0 / totalAllocPoint
                                mem[96] = 100
                                mem[64] = 228
                                mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                t = 128
                                u = mem[64]
                                idx = mem[96]
                                while idx >= 32:
                                    mem[u] = mem[t]
                                    rewardPerBlock = s / 100
                                    t = t + 32
                                    u = u + 32
                                    idx = idx - 32
                                    continue 
                                mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
                                call rewardTokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] + 324]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _5707 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5707] = return_data.size
                                    mem[_5707 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_5707 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    mem[132] = address(rewardSenderAddress)
                                    mem[164] = this.address
                                    mem[196] = 0 / totalAllocPoint
                                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    t = 128
                                    u = 228
                                    idx = 100
                                    while idx >= 32:
                                        mem[u] = mem[t]
                                        rewardPerBlock = s / 100
                                        t = t + 32
                                        u = u + 32
                                        idx = idx - 32
                                        continue 
                                    mem[324] = mem[252 len 4] or Mask(224, 32, mem[324])
                                    call rewardTokenAddress.mem[228 len 4] with:
                                         gas gas_remaining wei
                                        args mem[232 len 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if False and not Mask(224, 0, stor3):
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[338 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[329 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[260]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 339 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 330 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    mem[132] = address(rewardSenderAddress)
                                    mem[164] = this.address
                                    mem[196] = (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    mem[96] = 100
                                    mem[64] = 228
                                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    t = 128
                                    u = mem[64]
                                    idx = mem[96]
                                    while idx >= 32:
                                        mem[u] = mem[t]
                                        rewardPerBlock = s / 100
                                        t = t + 32
                                        u = u + 32
                                        idx = idx - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
                                    call rewardTokenAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] + 324]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[mem[64] + 110 len 22]
                                    else:
                                        _5705 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5705] = return_data.size
                                        mem[_5705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_5705 + 32]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[mem[64] + 110 len 22]
                                    if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg1 < poolInfo.length
        if block.number > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if 0 / totalAllocPoint > 0:
                    if ext_call.return_data[0] > 0:
                        if ext_code.size(rewardTokenAddress) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                        mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                        call rewardTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0x23b872dd(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[338 len 14],
                                            Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                            mem[356 len 4]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[329 len 23],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[260]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 339 len 22]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 330 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _5540 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _5541 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_5541 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5541 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5556 = mem[_5541]
                                        u = _5541 + 32
                                        v = mem[64]
                                        t = mem[_5541]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_5541])] = mem[_5541 + floor32(mem[_5541]) + -(mem[_5541] % 32) + 64 len mem[_5541] % 32] or Mask(8 * -(mem[_5541] % 32) + 32, -(8 * -(mem[_5541] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5541])])
                                        call rewardTokenAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5556 + _5540 + -mem[64] + 128]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                        else:
                                            _5950 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5950] = return_data.size
                                            mem[_5950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_5950 + 32]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[mem[64] + 110 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5546 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _5547 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5547 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5547 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5567 = mem[_5547]
                                            u = _5547 + 32
                                            v = _5546 + 132
                                            t = mem[_5547]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_5546 + floor32(mem[_5547]) + 132] = mem[_5547 + -(mem[_5547] % 32) + floor32(mem[_5547]) + 64 len mem[_5547] % 32] or Mask(8 * -(mem[_5547] % 32) + 32, -(8 * -(mem[_5547] % 32) + 32) + 256, mem[_5546 + floor32(mem[_5547]) + 132])
                                            call rewardTokenAddress.mem[_5546 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5546 + 136 len _5567 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5546 + 242 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5546 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _5546 + ceil32(return_data.size) + 133
                                                mem[_5546 + 132] = return_data.size
                                                mem[_5546 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5546 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5546 + ceil32(return_data.size) + 243 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_5546 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5543 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _5544 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5544 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5544 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5563 = mem[_5544]
                                            u = _5544 + 32
                                            v = mem[64]
                                            t = mem[_5544]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_5544])] = mem[_5544 + floor32(mem[_5544]) + -(mem[_5544] % 32) + 64 len mem[_5544] % 32] or Mask(8 * -(mem[_5544] % 32) + 32, -(8 * -(mem[_5544] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5544])])
                                            call rewardTokenAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _5563 + _5543 + -mem[64] + 128]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            else:
                                                _5949 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5949] = return_data.size
                                                mem[_5949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5949 + 32]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _1171 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _1172 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1172 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1172 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1183 = mem[_1172]
                                t = _1172 + 32
                                u = mem[64]
                                s = mem[_1172]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1172])] = mem[_1172 + floor32(mem[_1172]) + -(mem[_1172] % 32) + 64 len mem[_1172] % 32] or Mask(8 * -(mem[_1172] % 32) + 32, -(8 * -(mem[_1172] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1172])])
                                call rewardTokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1183 + _1171 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _1801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1801] = return_data.size
                                    mem[_1801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_1801 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1176 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _1177 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1177 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1177 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1189 = mem[_1177]
                                    t = _1177 + 32
                                    u = _1176 + 132
                                    s = mem[_1177]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1176 + floor32(mem[_1177]) + 132] = mem[_1177 + -(mem[_1177] % 32) + floor32(mem[_1177]) + 64 len mem[_1177] % 32] or Mask(8 * -(mem[_1177] % 32) + 32, -(8 * -(mem[_1177] % 32) + 32) + 256, mem[_1176 + floor32(mem[_1177]) + 132])
                                    call rewardTokenAddress.mem[_1176 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1176 + 136 len _1189 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1176 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1176 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _1176 + ceil32(return_data.size) + 133
                                        mem[_1176 + 132] = return_data.size
                                        mem[_1176 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1176 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1176 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1176 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1179 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _1180 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1180 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1180 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1195 = mem[_1180]
                                    t = _1180 + 32
                                    u = _1179 + 132
                                    s = mem[_1180]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1179 + floor32(mem[_1180]) + 132] = mem[_1180 + -(mem[_1180] % 32) + floor32(mem[_1180]) + 64 len mem[_1180] % 32] or Mask(8 * -(mem[_1180] % 32) + 32, -(8 * -(mem[_1180] % 32) + 32) + 256, mem[_1179 + floor32(mem[_1180]) + 132])
                                    call rewardTokenAddress.mem[_1179 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1179 + 136 len _1195 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1179 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1179 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _1179 + ceil32(return_data.size) + 133
                                        mem[_1179 + 132] = return_data.size
                                        mem[_1179 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1179 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1179 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1179 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function setRewardPerBlock(uint256 arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2:
        idx = 0
        while idx < poolInfo.length:
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _5522 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _5523 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_5523 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5523 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5538 = mem[_5523]
                                        u = _5523 + 32
                                        v = _5522 + 132
                                        t = mem[_5523]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[_5522 + floor32(mem[_5523]) + 132] = mem[_5523 + -(mem[_5523] % 32) + floor32(mem[_5523]) + 64 len mem[_5523] % 32] or Mask(8 * -(mem[_5523] % 32) + 32, -(8 * -(mem[_5523] % 32) + 32) + 256, mem[_5522 + floor32(mem[_5523]) + 132])
                                        call rewardTokenAddress.mem[_5522 + 132 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5522 + 136 len _5538 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_5522 + 242 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5522 + 233 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            mem[64] = _5522 + ceil32(return_data.size) + 133
                                            mem[_5522 + 132] = return_data.size
                                            mem[_5522 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_5522 + 164]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_5522 + ceil32(return_data.size) + 243 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_5522 + ceil32(return_data.size) + 234 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5525 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _5526 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5526 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5526 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5545 = mem[_5526]
                                            u = _5526 + 32
                                            v = _5525 + 132
                                            t = mem[_5526]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_5525 + floor32(mem[_5526]) + 132] = mem[_5526 + -(mem[_5526] % 32) + floor32(mem[_5526]) + 64 len mem[_5526] % 32] or Mask(8 * -(mem[_5526] % 32) + 32, -(8 * -(mem[_5526] % 32) + 32) + 256, mem[_5525 + floor32(mem[_5526]) + 132])
                                            call rewardTokenAddress.mem[_5525 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5525 + 136 len _5545 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5525 + 242 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5525 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _5525 + ceil32(return_data.size) + 133
                                                mem[_5525 + 132] = return_data.size
                                                mem[_5525 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5525 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5525 + ceil32(return_data.size) + 243 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_5525 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5528 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _5529 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5529 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5529 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5549 = mem[_5529]
                                            u = _5529 + 32
                                            v = mem[64]
                                            t = mem[_5529]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_5529])] = mem[_5529 + floor32(mem[_5529]) + -(mem[_5529] % 32) + 64 len mem[_5529] % 32] or Mask(8 * -(mem[_5529] % 32) + 32, -(8 * -(mem[_5529] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5529])])
                                            call rewardTokenAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _5549 + _5528 + -mem[64] + 128]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            else:
                                                _5930 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5930] = return_data.size
                                                mem[_5930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5930 + 32]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _1153 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _1154 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1154 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1154 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1165 = mem[_1154]
                                t = _1154 + 32
                                u = mem[64]
                                s = mem[_1154]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_1154])] = mem[_1154 + floor32(mem[_1154]) + -(mem[_1154] % 32) + 64 len mem[_1154] % 32] or Mask(8 * -(mem[_1154] % 32) + 32, -(8 * -(mem[_1154] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1154])])
                                call rewardTokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1165 + _1153 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _1783 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1783] = return_data.size
                                    mem[_1783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_1783 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1158 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _1159 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1159 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1159 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1171 = mem[_1159]
                                    t = _1159 + 32
                                    u = _1158 + 132
                                    s = mem[_1159]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1158 + floor32(mem[_1159]) + 132] = mem[_1159 + -(mem[_1159] % 32) + floor32(mem[_1159]) + 64 len mem[_1159] % 32] or Mask(8 * -(mem[_1159] % 32) + 32, -(8 * -(mem[_1159] % 32) + 32) + 256, mem[_1158 + floor32(mem[_1159]) + 132])
                                    call rewardTokenAddress.mem[_1158 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1158 + 136 len _1171 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1158 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1158 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _1158 + ceil32(return_data.size) + 133
                                        mem[_1158 + 132] = return_data.size
                                        mem[_1158 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1158 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1158 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1158 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1161 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _1162 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1162 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1162 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1177 = mem[_1162]
                                    t = _1162 + 32
                                    u = _1161 + 132
                                    s = mem[_1162]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1161 + floor32(mem[_1162]) + 132] = mem[_1162 + -(mem[_1162] % 32) + floor32(mem[_1162]) + 64 len mem[_1162] % 32] or Mask(8 * -(mem[_1162] % 32) + 32, -(8 * -(mem[_1162] % 32) + 32) + 256, mem[_1161 + floor32(mem[_1162]) + 132])
                                    call rewardTokenAddress.mem[_1161 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1161 + 136 len _1177 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1161 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1161 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _1161 + ceil32(return_data.size) + 133
                                        mem[_1161 + 132] = return_data.size
                                        mem[_1161 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1161 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1161 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1161 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    rewardPerBlock = arg1
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[0] = arg2
    mem[32] = 9
    if poolIndex[address(arg2)]:
        revert with 0, 'exist'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _5573 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _5574 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_5574 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5574 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _5589 = mem[_5574]
                                        u = _5574 + 32
                                        v = _5573 + 132
                                        t = mem[_5574]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[_5573 + floor32(mem[_5574]) + 132] = mem[_5574 + -(mem[_5574] % 32) + floor32(mem[_5574]) + 64 len mem[_5574] % 32] or Mask(8 * -(mem[_5574] % 32) + 32, -(8 * -(mem[_5574] % 32) + 32) + 256, mem[_5573 + floor32(mem[_5574]) + 132])
                                        call rewardTokenAddress.mem[_5573 + 132 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5573 + 136 len _5589 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_5573 + 242 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5573 + 233 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            mem[64] = _5573 + ceil32(return_data.size) + 133
                                            mem[_5573 + 132] = return_data.size
                                            mem[_5573 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_5573 + 164]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_5573 + ceil32(return_data.size) + 243 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_5573 + ceil32(return_data.size) + 234 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5579 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _5580 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5580 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5580 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5600 = mem[_5580]
                                            u = _5580 + 32
                                            v = _5579 + 132
                                            t = mem[_5580]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_5579 + floor32(mem[_5580]) + 132] = mem[_5580 + -(mem[_5580] % 32) + floor32(mem[_5580]) + 64 len mem[_5580] % 32] or Mask(8 * -(mem[_5580] % 32) + 32, -(8 * -(mem[_5580] % 32) + 32) + 256, mem[_5579 + floor32(mem[_5580]) + 132])
                                            call rewardTokenAddress.mem[_5579 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_5579 + 136 len _5600 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5579 + 242 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5579 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _5579 + ceil32(return_data.size) + 133
                                                mem[_5579 + 132] = return_data.size
                                                mem[_5579 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5579 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_5579 + ceil32(return_data.size) + 243 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_5579 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _5576 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _5577 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_5577 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_5577 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _5596 = mem[_5577]
                                            u = _5577 + 32
                                            v = mem[64]
                                            t = mem[_5577]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_5577])] = mem[_5577 + floor32(mem[_5577]) + -(mem[_5577] % 32) + 64 len mem[_5577] % 32] or Mask(8 * -(mem[_5577] % 32) + 32, -(8 * -(mem[_5577] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5577])])
                                            call rewardTokenAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _5596 + _5576 + -mem[64] + 128]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            else:
                                                _5982 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5982] = return_data.size
                                                mem[_5982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_5982 + 32]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[mem[64] + 110 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _1204 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _1205 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1205 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1205 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1216 = mem[_1205]
                                t = _1205 + 32
                                u = _1204 + 132
                                s = mem[_1205]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1204 + floor32(mem[_1205]) + 132] = mem[_1205 + -(mem[_1205] % 32) + floor32(mem[_1205]) + 64 len mem[_1205] % 32] or Mask(8 * -(mem[_1205] % 32) + 32, -(8 * -(mem[_1205] % 32) + 32) + 256, mem[_1204 + floor32(mem[_1205]) + 132])
                                call rewardTokenAddress.mem[_1204 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1204 + 136 len _1216 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_1204 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1204 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _1204 + ceil32(return_data.size) + 133
                                    mem[_1204 + 132] = return_data.size
                                    mem[_1204 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_1204 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_1204 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_1204 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1209 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _1210 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1210 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1210 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1222 = mem[_1210]
                                    t = _1210 + 32
                                    u = _1209 + 132
                                    s = mem[_1210]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1209 + floor32(mem[_1210]) + 132] = mem[_1210 + -(mem[_1210] % 32) + floor32(mem[_1210]) + 64 len mem[_1210] % 32] or Mask(8 * -(mem[_1210] % 32) + 32, -(8 * -(mem[_1210] % 32) + 32) + 256, mem[_1209 + floor32(mem[_1210]) + 132])
                                    call rewardTokenAddress.mem[_1209 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1209 + 136 len _1222 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1209 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1209 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _1209 + ceil32(return_data.size) + 133
                                        mem[_1209 + 132] = return_data.size
                                        mem[_1209 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1209 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_1209 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1209 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _1212 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _1213 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_1213 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1213 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _1228 = mem[_1213]
                                    t = _1213 + 32
                                    u = mem[64]
                                    s = mem[_1213]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_1213])] = mem[_1213 + floor32(mem[_1213]) + -(mem[_1213] % 32) + 64 len mem[_1213] % 32] or Mask(8 * -(mem[_1213] % 32) + 32, -(8 * -(mem[_1213] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1213])])
                                    call rewardTokenAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1228 + _1212 + -mem[64] + 128]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[mem[64] + 110 len 22]
                                    else:
                                        _1832 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1832] = return_data.size
                                        mem[_1832 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_1832 + 32]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[mem[64] + 110 len 22]
                                    if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF3F7[stor8.length] = arg1
    if block.number > startBlock:
        storF3F7[stor8.length] = block.number
    else:
        storF3F7[stor8.length] = startBlock
    storF3F7[stor8.length] = 0
    poolIndex[address(arg2)] = poolInfo.length
}



}
