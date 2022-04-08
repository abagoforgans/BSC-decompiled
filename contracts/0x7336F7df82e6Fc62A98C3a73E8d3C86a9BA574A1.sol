contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1, bytes arg2)
#
const supportsHistory = 1

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;
uint8 stor2;
address sub_c8e168deAddress; offset 8
address tokenAddress;
array of struct stakeHistory;
uint256 totalStaked;
uint256 rewardPerBlock;
uint256 lastRewardBlock;
uint256 interestsPerBlock;
mapping of struct totalStakedFor;
array of struct stakesFor;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function accAmountPerShare() payable {
    return interestsPerBlock
}

function sub_49f289dc(?) payable {
    return tokenAddress
}

function totalStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStakedFor[address(arg1)].field_0
}

function stakeHistory(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakeHistory.length
    return stakeHistory[arg1].field_0, stakeHistory[arg1].field_256
}

function paused() payable {
    return bool(stor2)
}

function totalStaked() payable {
    return totalStaked
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function stakers(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStakedFor[arg1].field_0, totalStakedFor[arg1].field_256, totalStakedFor[arg1].field_512
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function interestsPerBlock() payable {
    return interestsPerBlock
}

function sub_c8e168de(?) payable {
    return sub_c8e168deAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function stakesFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakesFor[arg1].field_0
    return stakesFor[arg1][arg2].field_0, stakesFor[arg1][arg2].field_256
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalStakedFor[address(arg1)].field_0, totalStaked
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function pause() payable {
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function lastStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stakesFor[address(arg1)].field_0:
        return 0
    require stakesFor[address(arg1)].field_0 - 1 < stakesFor[address(arg1)].field_0
    return stakesFor[address(arg1)][stakesFor[address(arg1)].field_0 - 1].field_0
}

function changeInterestRatePerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if arg1 == rewardPerBlock:
        revert with 0, 'amounts are the same'
    rewardPerBlock = arg1
    emit InterestRatePerBlockChanged(rewardPerBlock, arg1);
    return 1
}

function stakerShare(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalStakedFor[address(arg1)].field_0:
        return 0
    require totalStakedFor[address(arg1)].field_0
    if totalStakedFor[address(arg1)].field_0 * interestsPerBlock / totalStakedFor[address(arg1)].field_0 != interestsPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (totalStakedFor[address(arg1)].field_0 * interestsPerBlock / 10^18)
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function totalStakedAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stakeHistory.length:
        return 0
    require 0 < stakeHistory.length
    if arg1 < uint256(stakeHistory.field_0):
        return 0
    require stakeHistory.length - 1 < stakeHistory.length
    if arg1 >= stakeHistory[stakeHistory.length - 1].field_0:
        if stakeHistory.length - 1 < stakeHistory.length:
            return stakeHistory[stakeHistory.length - 1].field_256
    else:
        idx = 0
        while stakeHistory.length - 1 > idx:
            require stakeHistory.length + idx / 2 < stakeHistory.length
            mem[0] = 4
            if stakeHistory[Mask(255, 1, stakeHistory.length + idx)].field_0 > arg1:
                idx = idx
                continue 
            idx = stakeHistory.length + idx / 2
            continue 
        if idx < stakeHistory.length:
            return stakeHistory[idx].field_256
    revert
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x77416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function totalStakedForAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stakesFor[address(arg1)].field_0:
        return 0
    require 0 < stakesFor[address(arg1)].field_0
    if arg2 < stakesFor[address(arg1)].field_0:
        return 0
    require stakesFor[address(arg1)].field_0 - 1 < stakesFor[address(arg1)].field_0
    if arg2 >= stakesFor[address(arg1)][stakesFor[address(arg1)].field_0 - 1].field_0:
        if stakesFor[address(arg1)].field_0 - 1 < stakesFor[address(arg1)].field_0:
            return stakesFor[address(arg1)][stakesFor[address(arg1)].field_0 - 1].field_256
    else:
        idx = 0
        while stakesFor[address(arg1)].field_0 - 1 > idx:
            require stakesFor[address(arg1)].field_0 + idx / 2 < stakesFor[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 10)
            if stakesFor[address(arg1)][Mask(255, 1, stakesFor[address(arg1)].field_0 + idx)].field_0 > arg2:
                idx = idx
                continue 
            idx = stakesFor[address(arg1)].field_0 + idx / 2
            continue 
        if idx < stakesFor[address(arg1)].field_0:
            return stakesFor[address(arg1)][idx].field_256
    revert
}

function takeWithAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        if not totalStakedFor[address(arg1)].field_0:
            if totalStakedFor[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256 < -totalStakedFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
        require totalStakedFor[address(arg1)].field_0
        if totalStakedFor[address(arg1)].field_0 * interestsPerBlock / totalStakedFor[address(arg1)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(arg1)].field_512 > totalStakedFor[address(arg1)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((totalStakedFor[address(arg1)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
    if not totalStaked:
        if not totalStakedFor[address(arg1)].field_0:
            if totalStakedFor[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256 < -totalStakedFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
        require totalStakedFor[address(arg1)].field_0
        if totalStakedFor[address(arg1)].field_0 * interestsPerBlock / totalStakedFor[address(arg1)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(arg1)].field_512 > totalStakedFor[address(arg1)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((totalStakedFor[address(arg1)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - lastRewardBlock:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(arg1)].field_0:
            if totalStakedFor[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256 < -totalStakedFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
        require totalStakedFor[address(arg1)].field_0
        if (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / totalStakedFor[address(arg1)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(arg1)].field_512 > (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18) - totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
    require block.number - lastRewardBlock
    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(arg1)].field_0:
            if totalStakedFor[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256 < -totalStakedFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
        require totalStakedFor[address(arg1)].field_0
        if (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / totalStakedFor[address(arg1)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(arg1)].field_512 > (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * totalStakedFor[address(arg1)].field_0) + (0 / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18) - totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
    require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
    if (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not totalStakedFor[address(arg1)].field_0:
        if totalStakedFor[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256 < -totalStakedFor[address(arg1)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return (-totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
    require totalStakedFor[address(arg1)].field_0
    if (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(arg1)].field_0) / totalStakedFor[address(arg1)].field_0 != interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalStakedFor[address(arg1)].field_512 > (interestsPerBlock * totalStakedFor[address(arg1)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalStakedFor[address(arg1)].field_256 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((interestsPerBlock * totalStakedFor[address(arg1)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(arg1)].field_0) / 10^18) - totalStakedFor[address(arg1)].field_512 + totalStakedFor[address(arg1)].field_256)
}

function take() payable {
    if block.number <= lastRewardBlock:
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
        require totalStakedFor[address(msg.sender)].field_0
        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
    if not totalStaked:
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
        require totalStakedFor[address(msg.sender)].field_0
        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - lastRewardBlock:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
        require totalStakedFor[address(msg.sender)].field_0
        if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
    require block.number - lastRewardBlock
    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return (-totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
        require totalStakedFor[address(msg.sender)].field_0
        if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
    require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
    if (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not totalStakedFor[address(msg.sender)].field_0:
        if totalStakedFor[address(msg.sender)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return (-totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
    require totalStakedFor[address(msg.sender)].field_0
    if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalStakedFor[address(msg.sender)].field_256 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256)
}

function takeWithBlock() payable {
    if block.number <= lastRewardBlock:
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, block.number
        require totalStakedFor[address(msg.sender)].field_0
        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, 
               block.number
    if not totalStaked:
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, block.number
        require totalStakedFor[address(msg.sender)].field_0
        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, 
               block.number
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - lastRewardBlock:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, block.number
        require totalStakedFor[address(msg.sender)].field_0
        if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, 
               block.number
    require block.number - lastRewardBlock
    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            return -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, block.number
        require totalStakedFor[address(msg.sender)].field_0
        if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + (0 / totalStaked):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakedFor[address(msg.sender)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + (0 / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, 
               block.number
    require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
    if (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not totalStakedFor[address(msg.sender)].field_0:
        if totalStakedFor[address(msg.sender)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, block.number
    require totalStakedFor[address(msg.sender)].field_0
    if (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalStakedFor[address(msg.sender)].field_512 > (interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalStakedFor[address(msg.sender)].field_256 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((interestsPerBlock * totalStakedFor[address(msg.sender)].field_0) + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * totalStakedFor[address(msg.sender)].field_0) / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256, 
           block.number
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if block.number <= lastRewardBlock:
        if not totalStakedFor[address(msg.sender)].field_0:
            if totalStakedFor[address(msg.sender)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                require ext_code.size(sub_c8e168deAddress)
                call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                totalStakedFor[address(msg.sender)].field_512 = 0
                totalStakedFor[address(msg.sender)].field_256 = 0
                emit PaymentRequested(msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
        else:
            require totalStakedFor[address(msg.sender)].field_0
            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalStakedFor[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                require ext_code.size(sub_c8e168deAddress)
                call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                totalStakedFor[address(msg.sender)].field_256 = 0
                emit PaymentRequested(msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
    else:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number - lastRewardBlock <= 0:
            if not totalStakedFor[address(msg.sender)].field_0:
                if totalStakedFor[address(msg.sender)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_c8e168deAddress)
                    call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    totalStakedFor[address(msg.sender)].field_512 = 0
                    totalStakedFor[address(msg.sender)].field_256 = 0
                    emit PaymentRequested(msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
            else:
                require totalStakedFor[address(msg.sender)].field_0
                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalStakedFor[address(msg.sender)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_c8e168deAddress)
                    call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    totalStakedFor[address(msg.sender)].field_256 = 0
                    emit PaymentRequested(msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
        else:
            if not totalStaked:
                lastRewardBlock = block.number
                if not totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_c8e168deAddress)
                        call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        totalStakedFor[address(msg.sender)].field_512 = 0
                        totalStakedFor[address(msg.sender)].field_256 = 0
                        emit PaymentRequested(msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
                else:
                    require totalStakedFor[address(msg.sender)].field_0
                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalStakedFor[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_c8e168deAddress)
                        call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        totalStakedFor[address(msg.sender)].field_256 = 0
                        emit PaymentRequested(msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
            else:
                if lastRewardBlock > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - lastRewardBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / totalStaked
                else:
                    require block.number - lastRewardBlock
                    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        interestsPerBlock += 0 / totalStaked
                    else:
                        require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                        if (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) < interestsPerBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        interestsPerBlock += (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
                lastRewardBlock = block.number
                if not totalStakedFor[address(msg.sender)].field_0:
                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 < -totalStakedFor[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_c8e168deAddress)
                        call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        totalStakedFor[address(msg.sender)].field_512 = 0
                        totalStakedFor[address(msg.sender)].field_256 = 0
                        emit PaymentRequested(msg.sender, -totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
                else:
                    require totalStakedFor[address(msg.sender)].field_0
                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalStakedFor[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_c8e168deAddress)
                        call sub_c8e168deAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        totalStakedFor[address(msg.sender)].field_256 = 0
                        emit PaymentRequested(msg.sender, (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 + totalStakedFor[address(msg.sender)].field_256);
    stor1 = 1
}

function stake(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if block.number <= lastRewardBlock:
        if arg1 <= 0:
            revert with 0, 'Cannot stake 0'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stakesFor[address(msg.sender)].field_0:
            stakesFor[address(msg.sender)].field_0++
            stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
            stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = arg1
            if not stakeHistory.length:
                stakeHistory.length++
                stakeHistory[stakeHistory.length].field_0 = block.number
                stakeHistory[stakeHistory.length].field_256 = arg1
                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[address(msg.sender)].field_0 += arg1
                    if not totalStakedFor[address(msg.sender)].field_0:
                        totalStakedFor[address(msg.sender)].field_512 = 0
                    else:
                        require totalStakedFor[address(msg.sender)].field_0
                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    if not totalStakedFor[address(msg.sender)].field_0:
                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                    else:
                        require totalStakedFor[address(msg.sender)].field_0
                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStakedFor[address(msg.sender)].field_0 += arg1
                    if not totalStakedFor[address(msg.sender)].field_0:
                        totalStakedFor[address(msg.sender)].field_512 = 0
                    else:
                        require totalStakedFor[address(msg.sender)].field_0
                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
            else:
                require stakeHistory.length - 1 < stakeHistory.length
                if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                    require stakeHistory.length < stakeHistory.length
                    if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeHistory[stakeHistory.length].field_256 += arg1
                    if totalStakedFor[address(msg.sender)].field_0 <= 0:
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        if not totalStakedFor[address(msg.sender)].field_0:
                            if totalStakedFor[address(msg.sender)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakeHistory.length - 1 < stakeHistory.length
                    stakeHistory.length++
                    stakeHistory[stakeHistory.length].field_0 = block.number
                    stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                    require stakeHistory.length < stakeHistory.length
                    if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeHistory[stakeHistory.length].field_256 += arg1
                    if totalStakedFor[address(msg.sender)].field_0 <= 0:
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        if not totalStakedFor[address(msg.sender)].field_0:
                            if totalStakedFor[address(msg.sender)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
        else:
            require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
            if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_0 >= block.number:
                require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                if not stakeHistory.length:
                    stakeHistory.length++
                    stakeHistory[stakeHistory.length].field_0 = block.number
                    stakeHistory[stakeHistory.length].field_256 = arg1
                    if totalStakedFor[address(msg.sender)].field_0 <= 0:
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        if not totalStakedFor[address(msg.sender)].field_0:
                            if totalStakedFor[address(msg.sender)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakeHistory.length - 1 < stakeHistory.length
                    if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 229 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
            else:
                require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                stakesFor[address(msg.sender)].field_0++
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_256
                require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                if not stakeHistory.length:
                    stakeHistory.length++
                    stakeHistory[stakeHistory.length].field_0 = block.number
                    stakeHistory[stakeHistory.length].field_256 = arg1
                    if totalStakedFor[address(msg.sender)].field_0 <= 0:
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        if not totalStakedFor[address(msg.sender)].field_0:
                            if totalStakedFor[address(msg.sender)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakeHistory.length - 1 < stakeHistory.length
                    if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
    else:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number - lastRewardBlock <= 0:
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not stakesFor[address(msg.sender)].field_0:
                stakesFor[address(msg.sender)].field_0++
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = arg1
                if not stakeHistory.length:
                    stakeHistory.length++
                    stakeHistory[stakeHistory.length].field_0 = block.number
                    stakeHistory[stakeHistory.length].field_256 = arg1
                    if totalStakedFor[address(msg.sender)].field_0 <= 0:
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        if not totalStakedFor[address(msg.sender)].field_0:
                            if totalStakedFor[address(msg.sender)].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                            if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                        if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStakedFor[address(msg.sender)].field_0 += arg1
                        if not totalStakedFor[address(msg.sender)].field_0:
                            totalStakedFor[address(msg.sender)].field_512 = 0
                        else:
                            require totalStakedFor[address(msg.sender)].field_0
                            if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                            totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakeHistory.length - 1 < stakeHistory.length
                    if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                        require stakeHistory.length < stakeHistory.length
                        if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakeHistory[stakeHistory.length].field_256 += arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
            else:
                require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_0 >= block.number:
                    require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                    if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                    if not stakeHistory.length:
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                    stakesFor[address(msg.sender)].field_0++
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_256
                    require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                    if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                    if not stakeHistory.length:
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
        else:
            if not totalStaked:
                lastRewardBlock = block.number
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not stakesFor[address(msg.sender)].field_0:
                    stakesFor[address(msg.sender)].field_0++
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = arg1
                    if not stakeHistory.length:
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                    if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_0 >= block.number:
                        require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                        if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                        if not stakeHistory.length:
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 293 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                require stakeHistory.length - 1 < stakeHistory.length
                                stakeHistory.length++
                                stakeHistory[stakeHistory.length].field_0 = block.number
                                stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                        stakesFor[address(msg.sender)].field_0++
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_256
                        require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                        if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                        if not stakeHistory.length:
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                require stakeHistory.length - 1 < stakeHistory.length
                                stakeHistory.length++
                                stakeHistory[stakeHistory.length].field_0 = block.number
                                stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
            else:
                if lastRewardBlock > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - lastRewardBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    interestsPerBlock += 0 / totalStaked
                else:
                    require block.number - lastRewardBlock
                    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if interestsPerBlock + (0 / totalStaked) < interestsPerBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        interestsPerBlock += 0 / totalStaked
                    else:
                        require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                        if (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 357 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if interestsPerBlock + ((10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) < interestsPerBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        interestsPerBlock += (10^18 * block.number * rewardPerBlock) - (10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
                lastRewardBlock = block.number
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not stakesFor[address(msg.sender)].field_0:
                    stakesFor[address(msg.sender)].field_0++
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                    stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = arg1
                    if not stakeHistory.length:
                        stakeHistory.length++
                        stakeHistory[stakeHistory.length].field_0 = block.number
                        stakeHistory[stakeHistory.length].field_256 = arg1
                        if totalStakedFor[address(msg.sender)].field_0 <= 0:
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            if not totalStakedFor[address(msg.sender)].field_0:
                                if totalStakedFor[address(msg.sender)].field_512 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                            if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStakedFor[address(msg.sender)].field_0 += arg1
                            if not totalStakedFor[address(msg.sender)].field_0:
                                totalStakedFor[address(msg.sender)].field_512 = 0
                            else:
                                require totalStakedFor[address(msg.sender)].field_0
                                if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 677 len 31]
                                totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakeHistory.length - 1 < stakeHistory.length
                        if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 613 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                            require stakeHistory.length < stakeHistory.length
                            if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            stakeHistory[stakeHistory.length].field_256 += arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 677 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                else:
                    require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                    if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_0 >= block.number:
                        require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                        if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                        if not stakeHistory.length:
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 613 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 421 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                require stakeHistory.length - 1 < stakeHistory.length
                                stakeHistory.length++
                                stakeHistory[stakeHistory.length].field_0 = block.number
                                stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 613 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                    else:
                        require stakesFor[address(msg.sender)].field_0 - 1 < stakesFor[address(msg.sender)].field_0
                        stakesFor[address(msg.sender)].field_0++
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_0 = block.number
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 = stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0 - 1].field_256
                        require stakesFor[address(msg.sender)].field_0 < stakesFor[address(msg.sender)].field_0
                        if stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 + arg1 < stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        stakesFor[address(msg.sender)][stakesFor[address(msg.sender)].field_0].field_256 += arg1
                        if not stakeHistory.length:
                            stakeHistory.length++
                            stakeHistory[stakeHistory.length].field_0 = block.number
                            stakeHistory[stakeHistory.length].field_256 = arg1
                            if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    if totalStakedFor[address(msg.sender)].field_512 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                    if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStakedFor[address(msg.sender)].field_0 += arg1
                                if not totalStakedFor[address(msg.sender)].field_0:
                                    totalStakedFor[address(msg.sender)].field_512 = 0
                                else:
                                    require totalStakedFor[address(msg.sender)].field_0
                                    if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 677 len 31]
                                    totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                        else:
                            require stakeHistory.length - 1 < stakeHistory.length
                            if stakeHistory[stakeHistory.length - 1].field_0 >= block.number:
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 485 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 613 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                            else:
                                require stakeHistory.length - 1 < stakeHistory.length
                                stakeHistory.length++
                                stakeHistory[stakeHistory.length].field_0 = block.number
                                stakeHistory[stakeHistory.length].field_256 = stakeHistory[stakeHistory.length - 1].field_256
                                require stakeHistory.length < stakeHistory.length
                                if stakeHistory[stakeHistory.length].field_256 + arg1 < stakeHistory[stakeHistory.length].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakeHistory[stakeHistory.length].field_256 += arg1
                                if totalStakedFor[address(msg.sender)].field_0 <= 0:
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
                                else:
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        if totalStakedFor[address(msg.sender)].field_512 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 -= totalStakedFor[address(msg.sender)].field_512
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 549 len 31]
                                        if totalStakedFor[address(msg.sender)].field_512 > totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512 < totalStakedFor[address(msg.sender)].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalStakedFor[address(msg.sender)].field_256 = totalStakedFor[address(msg.sender)].field_256 + (totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18) - totalStakedFor[address(msg.sender)].field_512
                                    if totalStakedFor[address(msg.sender)].field_0 + arg1 < totalStakedFor[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStakedFor[address(msg.sender)].field_0 += arg1
                                    if not totalStakedFor[address(msg.sender)].field_0:
                                        totalStakedFor[address(msg.sender)].field_512 = 0
                                    else:
                                        require totalStakedFor[address(msg.sender)].field_0
                                        if totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / totalStakedFor[address(msg.sender)].field_0 != interestsPerBlock:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg2.length) + 677 len 31]
                                        totalStakedFor[address(msg.sender)].field_512 = totalStakedFor[address(msg.sender)].field_0 * interestsPerBlock / 10^18
    if totalStaked + arg1 < totalStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalStaked += arg1
    emit Staked(arg1, totalStakedFor[address(msg.sender)].field_0, Array(len=arg2.length, data=arg2[all]), msg.sender);
    stor1 = 1
}



}
