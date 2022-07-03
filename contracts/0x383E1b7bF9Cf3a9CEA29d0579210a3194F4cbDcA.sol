contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - income(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
address owner;
uint256 stor1;
address sub_76ab8136Address;
address rewardTokenAddress;
uint256 rewardsPerBlock;
uint256 denominationEmitAmount;
uint256 minimumEmitAmount;
uint256 maximumEmitAmount;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 remainingRewards;

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() {
    return totalAllocPoint
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function denominationEmitAmount() {
    return denominationEmitAmount
}

function startBlock() {
    return startBlock
}

function rewardsPerBlock() {
    return rewardsPerBlock
}

function sub_76ab8136(?) {
    return sub_76ab8136Address
}

function maximumEmitAmount() {
    return maximumEmitAmount
}

function owner() {
    return owner
}

function remainingRewards() {
    return remainingRewards
}

function minimumEmitAmount() {
    return minimumEmitAmount
}

function rewardToken() {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RescueTokens(ext_call.return_data[0], msg.sender, arg1);
}

function sub_d81ca6c3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RescueTokens(arg3, msg.sender, address(arg1));
}

function updatePool() {
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if block.number - uint256(poolInfo.field_512) and rewardsPerBlock > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                        if remainingRewards < (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                        if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint and 10^18 > -1 / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                    else:
                        if remainingRewards < remainingRewards:
                            revert with 'NH{q', 17
                        remainingRewards = 0
                        if remainingRewards and 10^18 > -1 / remainingRewards:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * remainingRewards / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.number
}

function updateRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if block.number - uint256(poolInfo.field_512) and rewardsPerBlock > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                        if remainingRewards < (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                        if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint and 10^18 > -1 / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                    else:
                        if remainingRewards < remainingRewards:
                            revert with 'NH{q', 17
                        remainingRewards = 0
                        if remainingRewards and 10^18 > -1 / remainingRewards:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * remainingRewards / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.number
    if remainingRewards > -arg1 - 1:
        revert with 'NH{q', 17
    remainingRewards += arg1
    if remainingRewards <= 0:
        rewardsPerBlock = 0
    else:
        if not denominationEmitAmount:
            revert with 'NH{q', 18
        rewardsPerBlock = remainingRewards / denominationEmitAmount
        if maximumEmitAmount < rewardsPerBlock:
            rewardsPerBlock = maximumEmitAmount
        if minimumEmitAmount >= rewardsPerBlock:
            rewardsPerBlock = minimumEmitAmount
    stor1 = 1
}

function updateEmissionSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if block.number - uint256(poolInfo.field_512) and rewardsPerBlock > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                        if remainingRewards < (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                        if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint and 10^18 > -1 / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                    else:
                        if remainingRewards < remainingRewards:
                            revert with 'NH{q', 17
                        remainingRewards = 0
                        if remainingRewards and 10^18 > -1 / remainingRewards:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * remainingRewards / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.number
    denominationEmitAmount = arg1
    minimumEmitAmount = arg2
    maximumEmitAmount = arg3
    if remainingRewards <= 0:
        rewardsPerBlock = 0
    else:
        if not denominationEmitAmount:
            revert with 'NH{q', 18
        rewardsPerBlock = remainingRewards / denominationEmitAmount
        if maximumEmitAmount < rewardsPerBlock:
            rewardsPerBlock = maximumEmitAmount
        if minimumEmitAmount >= rewardsPerBlock:
            rewardsPerBlock = minimumEmitAmount
    emit UpdateEmissionSettings(arg1, arg2, arg3, rewardsPerBlock, msg.sender);
}

function pendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256)
    if not uint256(poolInfo.field_1024):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256)
    if remainingRewards <= 0:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256)
    if block.number < uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if block.number - uint256(poolInfo.field_512) and rewardsPerBlock > -1 / block.number - uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
        if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint and 10^18 > -1 / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
            revert with 'NH{q', 17
        if not uint256(poolInfo.field_1024):
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if remainingRewards and 10^18 > -1 / remainingRewards:
        revert with 'NH{q', 17
    if not uint256(poolInfo.field_1024):
        revert with 'NH{q', 18
    if uint256(poolInfo.field_768) > -(10^18 * remainingRewards / uint256(poolInfo.field_1024)) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^18 * remainingRewards / uint256(poolInfo.field_1024)) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^18 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^18 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
}

function harvestFor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'harvestFor: FORBIDDEN'
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.number < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if block.number - uint256(poolInfo.field_512) and rewardsPerBlock > -1 / block.number - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                        if remainingRewards < (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                        if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint and 10^18 > -1 / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                    else:
                        if remainingRewards < remainingRewards:
                            revert with 'NH{q', 17
                        remainingRewards = 0
                        if remainingRewards and 10^18 > -1 / remainingRewards:
                            revert with 'NH{q', 17
                        if not uint256(poolInfo.field_1024):
                            revert with 'NH{q', 18
                        if uint256(poolInfo.field_768) > -(10^18 * remainingRewards / uint256(poolInfo.field_1024)) - 1:
                            revert with 'NH{q', 17
                        uint256(poolInfo.field_768) += 10^18 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.number
    if userInfo[address(arg1)].field_0 > 0:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256 > 0:
            if 0 >= poolInfo.length:
                revert with 'NH{q', 50
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if rewardTokenAddress == sub_76ab8136Address:
                require ext_code.size(sub_76ab8136Address)
                if ext_call.return_data[0] < (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256:
                    call sub_76ab8136Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg1 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    call sub_76ab8136Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call arg1 with:
                       value (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256 wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'safeTransferETH: ETH_TRANSFER_FAILED'
            else:
                require ext_code.size(rewardTokenAddress)
                if rewardTokenAddress != address(poolInfo.field_0):
                    if ext_call.return_data[0] < (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256
                else:
                    if ext_call.return_data[0] <= uint256(poolInfo.field_1024):
                        if 0 < (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256
                    else:
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < uint256(poolInfo.field_1024):
                            revert with 'NH{q', 17
                        require ext_code.size(rewardTokenAddress)
                        if ext_call.return_data[0] - uint256(poolInfo.field_1024) < (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0] - uint256(poolInfo.field_1024)
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'safeRewardTransfer: transfer failed'
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18
            emit Harvest(((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^18) - userInfo[address(arg1)].field_256), arg1);
    stor1 = 1
}



}
