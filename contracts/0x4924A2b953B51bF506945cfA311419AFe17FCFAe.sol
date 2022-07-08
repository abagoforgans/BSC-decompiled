contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
address owner;
uint256 stor1;
address sub_fda39803Address;
uint256 sub_64f3ad84;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
uint256 sub_a8bd7300;
uint256 maxStakeAmount;
address sub_a0364b2eAddress;
uint32 stor12;
address rewardDistributorAddress;
uint256 stor12;

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
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function startBlock() payable {
    return startBlock
}

function maxStakeAmount() payable {
    return maxStakeAmount
}

function sub_64f3ad84(?) payable {
    return sub_64f3ad84
}

function owner() payable {
    return owner
}

function sub_a0364b2e(?) payable {
    return sub_a0364b2eAddress
}

function sub_a8bd7300(?) payable {
    return sub_a8bd7300
}

function rewardDistributor() payable {
    return address(rewardDistributorAddress)
}

function sub_fda39803(?) payable {
    return sub_fda39803Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxStakeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxStakeAmount = arg1
}

function sub_c17b6e4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a0364b2eAddress = address(arg1)
}

function setRewardDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(rewardDistributorAddress) = arg1
}

function setMinimumStakeDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 720 * 24 * 3600:
        revert with 0, 'minimum too long'
    sub_a8bd7300 = arg1
}

function setEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endBlock <= block.number:
        revert with 0, 'pool is already over'
    if arg1 <= block.number:
        revert with 0, 'pool should end in the future'
    endBlock = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'pool has already started'
    if arg1 <= block.number:
        revert with 0, 'pool should start in the future'
    startBlock = arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    uint256(poolInfo.field_512) = startBlock
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= endBlock:
        if arg1 <= endBlock:
            if arg2 < arg1:
                revert with 0, 17
            return (arg2 - arg1)
        if arg2 < endBlock:
            revert with 0, 17
        return (arg2 - endBlock)
    if arg1 <= endBlock:
        if endBlock < arg1:
            revert with 0, 17
        return (endBlock - arg1)
    if endBlock < endBlock:
        revert with 0, 17
    else:
        return 0
}

function updatePool() payable {
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.number > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= endBlock:
                if uint256(poolInfo.field_512) <= endBlock:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if block.number - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < endBlock:
                        revert with 0, 17
                    if block.number - endBlock and sub_64f3ad84 > -1 / block.number - endBlock:
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) <= endBlock:
                    if endBlock < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endBlock - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / endBlock - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if endBlock < endBlock:
                        revert with 0, 17
                    if False and sub_64f3ad84 > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.number
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.number > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= endBlock:
                if uint256(poolInfo.field_512) <= endBlock:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if block.number - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < endBlock:
                        revert with 0, 17
                    if block.number - endBlock and sub_64f3ad84 > -1 / block.number - endBlock:
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) <= endBlock:
                    if endBlock < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endBlock - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / endBlock - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if endBlock < endBlock:
                        revert with 0, 17
                    if False and sub_64f3ad84 > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.number
    sub_64f3ad84 = arg1
}

function sub_9fbe3c7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(address(poolInfo.field_0))
    staticcall address(poolInfo.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if block.number <= endBlock:
        if uint256(poolInfo.field_512) <= endBlock:
            if block.number < uint256(poolInfo.field_512):
                revert with 0, 17
            if block.number - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / block.number - uint256(poolInfo.field_512):
                revert with 0, 17
            if (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
                revert with 0, 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
        if block.number < endBlock:
            revert with 0, 17
        if block.number - endBlock and sub_64f3ad84 > -1 / block.number - endBlock:
            revert with 0, 17
        if (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if uint256(poolInfo.field_512) <= endBlock:
        if endBlock < uint256(poolInfo.field_512):
            revert with 0, 17
        if endBlock - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / endBlock - uint256(poolInfo.field_512):
            revert with 0, 17
        if (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if endBlock < endBlock:
        revert with 0, 17
    if False and sub_64f3ad84 > 0:
        revert with 0, 17
    if False and uint256(poolInfo.field_256) > 0:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if uint256(poolInfo.field_768) > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 > !userInfo[address(arg1)].field_512:
        revert with 0, 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
}

function claimRewards() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 >= poolInfo.length:
        revert with 0, 50
    if not userInfo[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'claim rewards: user is not staking'
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_256:
            revert with 0, 17
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 > !userInfo[msg.sender].field_512:
            revert with 0, 17
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'claim rewards: no rewards to claim'
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
        userInfo[msg.sender].field_512 = 0
        mem[128] = uint256(poolInfo.field_256)
        mem[160] = uint256(poolInfo.field_512)
        mem[192] = uint256(poolInfo.field_768)
        mem[224] = uint256(poolInfo.field_1024)
        mem[256] = userInfo[msg.sender].field_0
        mem[288] = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
        mem[320] = 0
        mem[352] = userInfo[msg.sender].field_768
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512:
            if userInfo[msg.sender].field_768 > !sub_a8bd7300:
                revert with 0, 17
            mem[420] = address(rewardDistributorAddress)
            if block.timestamp >= userInfo[msg.sender].field_768 + sub_a8bd7300:
                mem[452] = msg.sender
                mem[484] = (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                mem[384] = 100
                mem[420 len 28] = Mask(224, 0, stor12)
                mem[416 len 4] = unknown_0x23b872dd(?????)
                mem[516] = 32
                mem[548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_fda39803Address):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0
                mem[680] = 0
                call sub_fda39803Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) << 544)
            else:
                mem[452] = sub_a0364b2eAddress
                mem[484] = (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                mem[384] = 100
                mem[420 len 28] = Mask(224, 0, stor12)
                mem[416 len 4] = unknown_0x23b872dd(?????)
                mem[516] = 32
                mem[548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_fda39803Address):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0
                mem[680] = 0
                call sub_fda39803Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if address(poolInfo.field_0):
                        revert with memory
                          from 128
                           len address(poolInfo.field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if address(poolInfo.field_0):
                    require address(poolInfo.field_0) >= 32
                    require uint256(poolInfo.field_256) == bool(uint256(poolInfo.field_256))
                    if not uint256(poolInfo.field_256):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[612] == bool(mem[612])
                    if not mem[612]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= endBlock:
                if uint256(poolInfo.field_512) <= endBlock:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if block.number - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < endBlock:
                        revert with 0, 17
                    if block.number - endBlock and sub_64f3ad84 > -1 / block.number - endBlock:
                        revert with 0, 17
                    if (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (block.number * sub_64f3ad84) - (endBlock * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (block.number * sub_64f3ad84 * uint256(poolInfo.field_256)) - (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) <= endBlock:
                    if endBlock < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endBlock - uint256(poolInfo.field_512) and sub_64f3ad84 > -1 / endBlock - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84) and uint256(poolInfo.field_256) > -1 / (endBlock * sub_64f3ad84) - (uint256(poolInfo.field_512) * sub_64f3ad84):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endBlock * sub_64f3ad84 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_64f3ad84 * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if endBlock < endBlock:
                        revert with 0, 17
                    if False and sub_64f3ad84 > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.number
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_256:
            revert with 0, 17
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 > !userInfo[msg.sender].field_512:
            revert with 0, 17
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= 0:
            revert with 0, 'claim rewards: no rewards to claim'
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
        userInfo[msg.sender].field_512 = 0
        mem[ceil32(return_data.size) + 96] = address(poolInfo.field_0)
        mem[ceil32(return_data.size) + 128] = uint256(poolInfo.field_256)
        mem[ceil32(return_data.size) + 160] = uint256(poolInfo.field_512)
        mem[ceil32(return_data.size) + 192] = uint256(poolInfo.field_768)
        mem[ceil32(return_data.size) + 224] = uint256(poolInfo.field_1024)
        mem[ceil32(return_data.size) + 256] = userInfo[msg.sender].field_0
        mem[ceil32(return_data.size) + 288] = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
        mem[ceil32(return_data.size) + 320] = 0
        mem[ceil32(return_data.size) + 352] = userInfo[msg.sender].field_768
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512:
            if userInfo[msg.sender].field_768 > !sub_a8bd7300:
                revert with 0, 17
            mem[ceil32(return_data.size) + 420] = address(rewardDistributorAddress)
            if block.timestamp >= userInfo[msg.sender].field_768 + sub_a8bd7300:
                mem[ceil32(return_data.size) + 452] = msg.sender
                mem[ceil32(return_data.size) + 484] = (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                mem[ceil32(return_data.size) + 384] = 100
                mem[ceil32(return_data.size) + 420 len 28] = Mask(224, 0, stor12)
                mem[ceil32(return_data.size) + 416 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 516] = 32
                mem[ceil32(return_data.size) + 548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_fda39803Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 580 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0
                mem[ceil32(return_data.size) + 680] = 0
                call sub_fda39803Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) << 544)
            else:
                mem[ceil32(return_data.size) + 452] = sub_a0364b2eAddress
                mem[ceil32(return_data.size) + 484] = (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                mem[ceil32(return_data.size) + 384] = 100
                mem[ceil32(return_data.size) + 420 len 28] = Mask(224, 0, stor12)
                mem[ceil32(return_data.size) + 416 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 516] = 32
                mem[ceil32(return_data.size) + 548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_fda39803Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 580 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0
                mem[ceil32(return_data.size) + 680] = 0
                call sub_fda39803Address with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor12), uint32(stor12), sub_a0364b2eAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 612] == bool(mem[ceil32(return_data.size) + 612])
                    if not mem[ceil32(return_data.size) + 612]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}



}
