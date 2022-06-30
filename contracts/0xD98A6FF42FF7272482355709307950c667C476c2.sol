contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address feeAddress;
uint256 totalStaked;
uint256 stakingTaxRate;
uint256 stakeTime;
uint256 dailyROI;
uint256 unstakingTaxRate;
uint256 minimumStakeValue;
uint8 stor9;
uint8 stor9; offset 8
mapping of uint256 stakes;
mapping of uint256 referralRewards;
mapping of uint256 referralCount;
mapping of uint256 stakeRewards;
mapping of uint256 stor14;
mapping of uint256 stor15;

function active() payable {
    return bool(uint8(stor9.field_0))
}

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function minimumStakeValue() payable {
    return minimumStakeValue
}

function registered() payable {
    return bool(uint8(stor9.field_8))
}

function feeAddress() payable {
    return feeAddress
}

function referralRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return referralRewards[arg1]
}

function stakingTaxRate() payable {
    return stakingTaxRate
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function stakeTime() payable {
    return stakeTime
}

function stakeRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakeRewards[arg1]
}

function referralCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referralCount[arg1]
}

function dailyROI() payable {
    return dailyROI
}

function unstakingTaxRate() payable {
    return unstakingTaxRate
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setDailyROI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    dailyROI = arg1
}

function setStakeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stakeTime = arg1
}

function newFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    feeAddress = arg1
}

function setStakingTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stakingTaxRate = arg1
}

function setUnstakingTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    unstakingTaxRate = arg1
}

function setMinimumStakeValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minimumStakeValue = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function changeActiveStatus() payable {
    require msg.sender == owner
    if not uint8(stor9.field_0):
        uint8(stor9.field_0) = 1
    else:
        uint8(stor9.field_0) = 0
}

function sub_e0386ea5(?) payable {
    require calldata.size - 4 >= 32
    require stor15[address(arg1)] <= block.timestamp
    if block.timestamp - stor15[address(arg1)] <= stakeTime:
        return 0
    return 1
}

function rewardPool() payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalStaked <= ext_call.return_data[0]
    return (ext_call.return_data[0] - totalStaked)
}

function calculateEarnings(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor14[address(arg1)] <= block.timestamp
    if stakes[address(arg1)]:
        require stakes[address(arg1)]
        require stakes[address(arg1)] * dailyROI / stakes[address(arg1)] == dailyROI
    if stakes[address(arg1)] * dailyROI:
        require stakes[address(arg1)] * dailyROI
        require stakes[address(arg1)] * dailyROI * block.timestamp - stor14[address(arg1)] / 24 * 3600 / stakes[address(arg1)] * dailyROI == block.timestamp - stor14[address(arg1)] / 24 * 3600
    return (stakes[address(arg1)] * dailyROI * block.timestamp - stor14[address(arg1)] / 24 * 3600 / 10000)
}

function filter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalStaked <= ext_call.return_data[0]
    if ext_call.return_data[0] - totalStaked < arg1:
        revert with 0, 'Insufficient  balance in pool'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OnWithdrawal(msg.sender, arg1);
    return 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4d757374206861766520656e6f7567682062616c616e636520746f207374616b,
                    mem[197 len 31]
    if arg1 < minimumStakeValue:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x654d7573742073656e64206174206c6561737420656e6f7567682020746f2070617920726567697374726174696f6e20666565,
                    mem[215 len 13]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735374616b65206661696c65642064756520746f206661696c656420616d6f756e74207472616e73666572,
                    mem[207 len 21]
    if stakingTaxRate:
        require stakingTaxRate
        require stakingTaxRate * arg1 / stakingTaxRate == arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, stakingTaxRate * arg1 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'insufficient amount for fee'
    stor14[address(msg.sender)] = block.timestamp
    require totalStaked + arg1 >= totalStaked
    require stakingTaxRate * arg1 / 1000 <= totalStaked + arg1
    totalStaked = totalStaked + arg1 - (stakingTaxRate * arg1 / 1000)
    require stakes[address(msg.sender)] + arg1 >= stakes[address(msg.sender)]
    require stakingTaxRate * arg1 / 1000 <= stakes[address(msg.sender)] + arg1
    stakes[address(msg.sender)] = stakes[address(msg.sender)] + arg1 - (stakingTaxRate * arg1 / 1000)
}

function withdrawEarnings() payable {
    require stor14[address(msg.sender)] <= block.timestamp
    if stakes[address(msg.sender)]:
        require stakes[address(msg.sender)]
        require stakes[address(msg.sender)] * dailyROI / stakes[address(msg.sender)] == dailyROI
    if stakes[address(msg.sender)] * dailyROI:
        require stakes[address(msg.sender)] * dailyROI
        require stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / stakes[address(msg.sender)] * dailyROI == block.timestamp - stor14[address(msg.sender)] / 24 * 3600
    require referralRewards[address(msg.sender)] + stakeRewards[address(msg.sender)] >= referralRewards[address(msg.sender)]
    require stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000 >= 0
    if referralRewards[address(msg.sender)] + stakeRewards[address(msg.sender)] + (stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000) <= 0:
        revert with 0, 'No reward to withdraw'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalStaked <= ext_call.return_data[0]
    if ext_call.return_data[0] - totalStaked < referralRewards[address(msg.sender)] + stakeRewards[address(msg.sender)] + (stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000):
        revert with 0, 'Insufficient  balance in pool'
    stakeRewards[address(msg.sender)] = 0
    referralRewards[address(msg.sender)] = 0
    referralCount[address(msg.sender)] = 0
    require stor14[address(msg.sender)] <= block.timestamp
    require block.timestamp - stor14[address(msg.sender)] % 24 * 3600 <= block.timestamp
    stor14[address(msg.sender)] = block.timestamp - (block.timestamp - stor14[address(msg.sender)] % 24 * 3600)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, referralRewards[address(msg.sender)] + stakeRewards[address(msg.sender)] + (stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OnWithdrawal(msg.sender, referralRewards[address(msg.sender)] + stakeRewards[address(msg.sender)] + (stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000));
    return 1
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > stakes[address(msg.sender)]:
        revert with 0, 'Insufficient balance to unstake'
    if arg1 <= 0:
        revert with 0, 'Insufficient balance to unstake'
    if unstakingTaxRate:
        require unstakingTaxRate
        require unstakingTaxRate * arg1 / unstakingTaxRate == arg1
    require unstakingTaxRate * arg1 / 1000 <= arg1
    require stor14[address(msg.sender)] <= block.timestamp
    if stakes[address(msg.sender)]:
        require stakes[address(msg.sender)]
        require stakes[address(msg.sender)] * dailyROI / stakes[address(msg.sender)] == dailyROI
    if stakes[address(msg.sender)] * dailyROI:
        require stakes[address(msg.sender)] * dailyROI
        require stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / stakes[address(msg.sender)] * dailyROI == block.timestamp - stor14[address(msg.sender)] / 24 * 3600
    require stakeRewards[address(msg.sender)] + (stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000) >= stakeRewards[address(msg.sender)]
    stakeRewards[address(msg.sender)] += stakes[address(msg.sender)] * dailyROI * block.timestamp - stor14[address(msg.sender)] / 24 * 3600 / 10000
    require arg1 <= stakes[address(msg.sender)]
    stakes[address(msg.sender)] -= arg1
    require stor14[address(msg.sender)] <= block.timestamp
    require block.timestamp - stor14[address(msg.sender)] % 24 * 3600 <= block.timestamp
    stor14[address(msg.sender)] = block.timestamp - (block.timestamp - stor14[address(msg.sender)] % 24 * 3600)
    require stor15[address(msg.sender)] <= block.timestamp
    if block.timestamp - stor15[address(msg.sender)] <= stakeTime:
        revert with 0, 
                    32,
                    48,
                    0x2e596f75206e65656420746f207374616b6520666f7220746865206d696e756d756d20616d6f756e74206f6620646179,
                    mem[276 len 16]
    require arg1 <= totalStaked
    totalStaked -= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 - (unstakingTaxRate * arg1 / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, unstakingTaxRate * arg1 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit OnUnstake(msg.sender, arg1, unstakingTaxRate * arg1 / 1000);
}

function sub_2afdaf39(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg2:
        revert with 0, 'Cannot refer self'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4d757374206861766520656e6f7567682062616c616e636520746f207374616b,
                    mem[197 len 31]
    if arg1 < minimumStakeValue:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x654d7573742073656e64206174206c6561737420656e6f7567682020746f2070617920726567697374726174696f6e20666565,
                    mem[215 len 13]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735374616b65206661696c65642064756520746f206661696c656420616d6f756e74207472616e73666572,
                    mem[207 len 21]
    if stakingTaxRate:
        require stakingTaxRate
        require stakingTaxRate * arg1 / stakingTaxRate == arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, stakingTaxRate * arg1 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'insufficient amount for fee'
    if arg2:
        referralCount[address(arg2)]++
        require referralRewards[address(arg2)] + (stakingTaxRate * arg1 / 1000) >= referralRewards[address(arg2)]
        referralRewards[address(arg2)] += stakingTaxRate * arg1 / 1000
    stor14[address(msg.sender)] = block.timestamp
    require totalStaked + arg1 >= totalStaked
    require stakingTaxRate * arg1 / 1000 <= totalStaked + arg1
    totalStaked = totalStaked + arg1 - (stakingTaxRate * arg1 / 1000)
    require stakes[address(msg.sender)] + arg1 >= stakes[address(msg.sender)]
    require stakingTaxRate * arg1 / 1000 <= stakes[address(msg.sender)] + arg1
    stakes[address(msg.sender)] = stakes[address(msg.sender)] + arg1 - (stakingTaxRate * arg1 / 1000)
    emit OnRegisterAndStake(address(msg.sender), arg1, stakingTaxRate * arg1 / 1000, arg2);
}



}
