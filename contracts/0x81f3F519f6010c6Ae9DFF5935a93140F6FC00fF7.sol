contract main {




// =====================  Runtime code  =====================


address owner;
address sub_897d7407Address;
uint256 totalStaked;
uint256 stakingTaxRate;
uint256 registrationTax;
uint256 dailyROI;
uint256 unstakingTaxRate;
uint256 minimumStakeValue;
uint8 stor8;
mapping of uint256 stakes;
mapping of uint256 referralRewards;
mapping of uint256 referralCount;
mapping of uint256 stakeRewards;
mapping of uint256 stor13;
mapping of uint8 stor14;

function active() payable {
    return bool(stor8)
}

function registrationTax() payable {
    return registrationTax
}

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function minimumStakeValue() payable {
    return minimumStakeValue
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

function sub_897d7407(?) payable {
    return sub_897d7407Address
}

function owner() payable {
    return owner
}

function registered(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
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

function _fallback() payable {
    revert
}

function setDailyROI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    dailyROI = arg1
}

function changeActiveStatus() payable {
    require msg.sender == owner
    if not stor8:
        stor8 = 1
    else:
        stor8 = 0
}

function setStakingTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stakingTaxRate = arg1
}

function setRegistrationTax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    registrationTax = arg1
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
    emit OwnershipTransferred(arg1, arg1);
}

function rewardPool() payable {
    require msg.sender == owner
    require ext_code.size(sub_897d7407Address)
    staticcall sub_897d7407Address.0x70a08231 with:
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
    require stor13[address(arg1)] <= block.timestamp
    if stakes[address(arg1)]:
        require stakes[address(arg1)]
        require dailyROI * stakes[address(arg1)] / stakes[address(arg1)] == dailyROI
    if dailyROI * stakes[address(arg1)]:
        require dailyROI * stakes[address(arg1)]
        require block.timestamp - stor13[address(arg1)] / 24 * 3600 * dailyROI * stakes[address(arg1)] / dailyROI * stakes[address(arg1)] == block.timestamp - stor13[address(arg1)] / 24 * 3600
    return (block.timestamp - stor13[address(arg1)] / 24 * 3600 * dailyROI * stakes[address(arg1)] / 10000)
}

function filter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_897d7407Address)
    staticcall sub_897d7407Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalStaked <= ext_call.return_data[0]
    if ext_call.return_data[0] - totalStaked < arg1:
        revert with 0, 'Insufficient CHS balance in pool'
    require ext_code.size(sub_897d7407Address)
    call sub_897d7407Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OnWithdrawal(msg.sender, arg1);
    return 1
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor14[msg.sender]) != 1:
        revert with 0, 'Stakeholder must be registered'
    if arg1 > stakes[msg.sender]:
        revert with 0, 'Insufficient balance to unstake'
    if arg1 <= 0:
        revert with 0, 'Insufficient balance to unstake'
    if unstakingTaxRate:
        require unstakingTaxRate
        require arg1 * unstakingTaxRate / unstakingTaxRate == arg1
    require arg1 * unstakingTaxRate / 1000 <= arg1
    require stor13[address(msg.sender)] <= block.timestamp
    if stakes[address(msg.sender)]:
        require stakes[address(msg.sender)]
        require dailyROI * stakes[address(msg.sender)] / stakes[address(msg.sender)] == dailyROI
    if dailyROI * stakes[address(msg.sender)]:
        require dailyROI * stakes[address(msg.sender)]
        require block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / dailyROI * stakes[address(msg.sender)] == block.timestamp - stor13[address(msg.sender)] / 24 * 3600
    require (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] >= stakeRewards[msg.sender]
    stakeRewards[msg.sender] += block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000
    require arg1 <= stakes[msg.sender]
    stakes[msg.sender] -= arg1
    require stor13[msg.sender] <= block.timestamp
    require block.timestamp - stor13[msg.sender] % 24 * 3600 <= block.timestamp
    stor13[msg.sender] = block.timestamp - (block.timestamp - stor13[msg.sender] % 24 * 3600)
    require arg1 <= totalStaked
    totalStaked -= arg1
    require ext_code.size(sub_897d7407Address)
    call sub_897d7407Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 - (arg1 * unstakingTaxRate / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stakes[msg.sender]:
        stor14[msg.sender] = 0
    emit OnUnstake(msg.sender, arg1, arg1 * unstakingTaxRate / 1000);
}

function withdrawEarnings() payable {
    require stor13[address(msg.sender)] <= block.timestamp
    if stakes[address(msg.sender)]:
        require stakes[address(msg.sender)]
        require dailyROI * stakes[address(msg.sender)] / stakes[address(msg.sender)] == dailyROI
    if dailyROI * stakes[address(msg.sender)]:
        require dailyROI * stakes[address(msg.sender)]
        require block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / dailyROI * stakes[address(msg.sender)] == block.timestamp - stor13[address(msg.sender)] / 24 * 3600
    require stakeRewards[msg.sender] + referralRewards[msg.sender] >= referralRewards[msg.sender]
    require block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000 >= 0
    if (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] + referralRewards[msg.sender] <= 0:
        revert with 0, 'No reward to withdraw'
    require ext_code.size(sub_897d7407Address)
    staticcall sub_897d7407Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalStaked <= ext_call.return_data[0]
    if ext_call.return_data[0] - totalStaked < (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] + referralRewards[msg.sender]:
        revert with 0, 'Insufficient CHS balance in pool'
    stakeRewards[msg.sender] = 0
    referralRewards[msg.sender] = 0
    referralCount[msg.sender] = 0
    require stor13[msg.sender] <= block.timestamp
    require block.timestamp - stor13[msg.sender] % 24 * 3600 <= block.timestamp
    stor13[msg.sender] = block.timestamp - (block.timestamp - stor13[msg.sender] % 24 * 3600)
    require ext_code.size(sub_897d7407Address)
    call sub_897d7407Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] + referralRewards[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OnWithdrawal(msg.sender, (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] + referralRewards[msg.sender]);
    return 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor14[msg.sender]) != 1:
        revert with 0, 'Stakeholder must be registered'
    if bool(stor8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe536d61727420636f6e747261637420697320637572656e746c7920696e6163746976,
                    mem[199 len 29]
    if arg1 < minimumStakeValue:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e416d6f756e742069732062656c6f77206d696e696d756d207374616b652076616c7565,
                    mem[200 len 28]
    require ext_code.size(sub_897d7407Address)
    staticcall sub_897d7407Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654d757374206861766520656e6f7567682062616c616e636520746f207374616b,
                    mem[197 len 31]
    require ext_code.size(sub_897d7407Address)
    call sub_897d7407Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x645374616b65206661696c65642064756520746f206661696c656420616d6f756e74207472616e73666572,
                    mem[207 len 21]
    if stakingTaxRate:
        require stakingTaxRate
        require arg1 * stakingTaxRate / stakingTaxRate == arg1
    require arg1 * stakingTaxRate / 1000 <= arg1
    require arg1 - (arg1 * stakingTaxRate / 1000) + totalStaked >= totalStaked
    totalStaked = arg1 - (arg1 * stakingTaxRate / 1000) + totalStaked
    require stor13[address(msg.sender)] <= block.timestamp
    if stakes[address(msg.sender)]:
        require stakes[address(msg.sender)]
        require dailyROI * stakes[address(msg.sender)] / stakes[address(msg.sender)] == dailyROI
    if dailyROI * stakes[address(msg.sender)]:
        require dailyROI * stakes[address(msg.sender)]
        require block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / dailyROI * stakes[address(msg.sender)] == block.timestamp - stor13[address(msg.sender)] / 24 * 3600
    require (block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000) + stakeRewards[msg.sender] >= stakeRewards[msg.sender]
    stakeRewards[msg.sender] += block.timestamp - stor13[address(msg.sender)] / 24 * 3600 * dailyROI * stakes[address(msg.sender)] / 10000
    require stor13[msg.sender] <= block.timestamp
    require block.timestamp - stor13[msg.sender] % 24 * 3600 <= block.timestamp
    stor13[msg.sender] = block.timestamp - (block.timestamp - stor13[msg.sender] % 24 * 3600)
    require arg1 - (arg1 * stakingTaxRate / 1000) + stakes[msg.sender] >= stakes[msg.sender]
    stakes[msg.sender] = arg1 - (arg1 * stakingTaxRate / 1000) + stakes[msg.sender]
    emit OnStake(msg.sender, arg1 - (arg1 * stakingTaxRate / 1000), arg1 * stakingTaxRate / 1000);
}

function registerAndStake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor14[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e5374616b65686f6c64657220697320616c726561647920726567697374657265,
                    mem[197 len 31]
    if bool(stor8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe536d61727420636f6e747261637420697320637572656e746c7920696e6163746976,
                    mem[199 len 29]
    if arg2 == msg.sender:
        revert with 0, 'Cannot refer self'
    if not stor14[address(arg2)]:
        if arg2:
            revert with 0, 'Referrer must be registered'
    require ext_code.size(sub_897d7407Address)
    staticcall sub_897d7407Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654d757374206861766520656e6f7567682062616c616e636520746f207374616b,
                    mem[197 len 31]
    require minimumStakeValue + registrationTax >= registrationTax
    if arg1 < minimumStakeValue + registrationTax:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x654d7573742073656e64206174206c6561737420656e6f7567682043485320746f2070617920726567697374726174696f6e20666565,
                    mem[218 len 10]
    require ext_code.size(sub_897d7407Address)
    call sub_897d7407Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x645374616b65206661696c65642064756520746f206661696c656420616d6f756e74207472616e73666572,
                    mem[207 len 21]
    require registrationTax <= arg1
    if stakingTaxRate:
        require stakingTaxRate
        require (arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / stakingTaxRate == arg1 - registrationTax
    if arg2:
        referralCount[address(arg2)]++
        require ((arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000) + referralRewards[address(arg2)] >= referralRewards[address(arg2)]
        referralRewards[address(arg2)] += (arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000
    stor14[msg.sender] = 1
    stor13[msg.sender] = block.timestamp
    require arg1 - registrationTax + totalStaked >= totalStaked
    require (arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000 <= arg1 - registrationTax + totalStaked
    totalStaked = arg1 - registrationTax + totalStaked - ((arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000)
    require arg1 - registrationTax + stakes[msg.sender] >= stakes[msg.sender]
    require (arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000 <= arg1 - registrationTax + stakes[msg.sender]
    stakes[msg.sender] = arg1 - registrationTax + stakes[msg.sender] - ((arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000)
    require ((arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000) + registrationTax >= registrationTax
    emit OnRegisterAndStake(address(msg.sender), arg1, ((arg1 * stakingTaxRate) - (registrationTax * stakingTaxRate) / 1000) + registrationTax, arg2);
}



}
