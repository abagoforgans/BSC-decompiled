contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1, bytes arg2)
#  - unstakeQuery(uint256 arg1)
#  - unstake(uint256 arg1, bytes arg2)
#
const supportsHistory = 0

const BONUS_DECIMALS = 2


address owner;
address _stakingPoolAddress;
address _unlockedPoolAddress;
address _lockedPoolAddress;
address stor4;
address stor5;
uint256 stor6;
uint256 startBonus;
uint256 bonusPeriodSec;
uint256 totalLockedShares;
uint256 totalStakingShares;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of struct stor15;
array of struct stor16;
array of struct unlockSchedules;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403753;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403754;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403755;
array of uint256 stor22581645139872629890233439717971975110198959689450188087151966948260709403756;

function startBonus() payable {
    return startBonus
}

function _stakingPool() payable {
    return _stakingPoolAddress
}

function unlockSchedules(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < unlockSchedules.length
    return unlockSchedules[arg1].field_0, 
           unlockSchedules[arg1].field_256,
           unlockSchedules[arg1].field_512,
           unlockSchedules[arg1].field_768,
           unlockSchedules[arg1].field_1024
}

function totalStakingShares() payable {
    return totalStakingShares
}

function bonusPeriodSec() payable {
    return bonusPeriodSec
}

function totalLockedShares() payable {
    return totalLockedShares
}

function _lockedPool() payable {
    return _lockedPoolAddress
}

function owner() payable {
    return owner
}

function unlockScheduleCount() payable {
    return unlockSchedules.length
}

function _unlockedPool() payable {
    return _unlockedPoolAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalLocked() payable {
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalStaked() payable {
    require ext_code.size(_stakingPoolAddress)
    staticcall _stakingPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function token() payable {
    require ext_code.size(_stakingPoolAddress)
    staticcall _stakingPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function totalUnlocked() payable {
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStakingToken() payable {
    require ext_code.size(_stakingPoolAddress)
    staticcall _stakingPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function rescueFundsFromStakingPool(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(_stakingPoolAddress)
    call _stakingPoolAddress.rescueFunds(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function totalStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if totalStakingShares <= 0:
        return 0
    require ext_code.size(_stakingPoolAddress)
    staticcall _stakingPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require totalStakingShares > 0
        if totalStakingShares:
            return (0 / totalStakingShares)
    else:
        require stor15[address(arg1)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[address(arg1)].field_0
        require totalStakingShares > 0
        if totalStakingShares:
            return (stor15[address(arg1)].field_0 * ext_call.return_data[0] / totalStakingShares)
    ('iszero', ('stor', ('name', 'totalStakingShares', 10)))
    revert
}

function getDistributionToken() payable {
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_63b5c805(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require stor15[msg.sender].field_512 <= block.timestamp
    if not block.timestamp - stor15[msg.sender].field_512:
        if 2 * ext_call.return_data[0]:
            require not 0 / 2 * ext_call.return_data[0]
        require stor11 > 0
        if stor11:
            return (0 / stor11)
    else:
        require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
        if not 2 * ext_call.return_data[0]:
            require stor11 > 0
            if stor11:
                return (0 / stor11)
        else:
            require (ext_call.return_data[0] * block.timestamp * stor15[msg.sender].field_0) + (ext_call.return_data[0] * block.timestamp * stor15[msg.sender].field_0) - (ext_call.return_data[0] * stor15[msg.sender].field_512 * stor15[msg.sender].field_0) - (ext_call.return_data[0] * stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / 2 * ext_call.return_data[0] == (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0)
            require stor11 > 0
            if stor11:
                return ((ext_call.return_data[0] * block.timestamp * stor15[msg.sender].field_0) + (ext_call.return_data[0] * block.timestamp * stor15[msg.sender].field_0) - (ext_call.return_data[0] * stor15[msg.sender].field_512 * stor15[msg.sender].field_0) - (ext_call.return_data[0] * stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / stor11)
    ('iszero', ('stor', ('name', 'stor11', 11)))
    revert
}

function unlockTokens() payable {
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == totalLockedShares:
        if ext_call.return_data[0]:
            require ext_code.size(_lockedPoolAddress)
            call _lockedPoolAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _unlockedPoolAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                            mem[212 len 16]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
        return ext_call.return_data[0]
    idx = 0
    while idx < unlockSchedules.length:
        mem[0] = 17
        if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
            if block.timestamp >= unlockSchedules[idx].field_768:
                require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
            else:
                require unlockSchedules[idx].field_512 <= block.timestamp
                if not block.timestamp - unlockSchedules[idx].field_512:
                    require unlockSchedules[idx].field_1024 > 0
                    require unlockSchedules[idx].field_1024
                    unlockSchedules[idx].field_512 = block.timestamp
                    require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                    require 0 / unlockSchedules[idx].field_1024 >= 0
                else:
                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                    require unlockSchedules[idx].field_1024 > 0
                    require unlockSchedules[idx].field_1024
                    unlockSchedules[idx].field_512 = block.timestamp
                    require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
        idx = idx + 1
        continue 
    require totalLockedShares > 0
    require totalLockedShares
    require 0 <= totalLockedShares
    if 0 / totalLockedShares:
        require ext_code.size(_lockedPoolAddress)
        call _lockedPoolAddress.0xa9059cbb with:
             gas gas_remaining wei
            args _unlockedPoolAddress, 0 / totalLockedShares
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                        mem[212 len 16]
        require ext_code.size(_lockedPoolAddress)
        staticcall _lockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    return (0 / totalLockedShares)
}

function updateAccounting() payable {
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == totalLockedShares:
        if ext_call.return_data[0]:
            require ext_code.size(_lockedPoolAddress)
            call _lockedPoolAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _unlockedPoolAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                            mem[212 len 16]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
    else:
        idx = 0
        while idx < unlockSchedules.length:
            mem[0] = 17
            if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
                if block.timestamp >= unlockSchedules[idx].field_768:
                    require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                    unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                    require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                    require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
                else:
                    require unlockSchedules[idx].field_512 <= block.timestamp
                    if not block.timestamp - unlockSchedules[idx].field_512:
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                        require 0 / unlockSchedules[idx].field_1024 >= 0
                    else:
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
            idx = idx + 1
            continue 
        require totalLockedShares > 0
        require totalLockedShares
        require 0 <= totalLockedShares
        if 0 / totalLockedShares:
            require ext_code.size(_lockedPoolAddress)
            call _lockedPoolAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _unlockedPoolAddress, 0 / totalLockedShares
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                            mem[212 len 16]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    require stor12 <= block.timestamp
    if not block.timestamp - stor12:
        require stor11 >= stor11
    else:
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11 >= stor11
        stor11 = (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11
    stor12 = block.timestamp
    require stor15[msg.sender].field_512 <= block.timestamp
    if not block.timestamp - stor15[msg.sender].field_512:
        require stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
    else:
        require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
        require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
        stor15[msg.sender].field_256 = (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256
    stor15[msg.sender].field_512 = block.timestamp
    if not stor11:
        require ext_code.size(_lockedPoolAddress)
        staticcall _lockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_unlockedPoolAddress)
        staticcall _unlockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], ext_call.return_data[0], stor15[msg.sender].field_256, stor11, 0, block.timestamp
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require stor11 > 0
        require stor11
        require ext_code.size(_lockedPoolAddress)
        staticcall _lockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_unlockedPoolAddress)
        staticcall _unlockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], ext_call.return_data[0], stor15[msg.sender].field_256, stor11, 0 / stor11, block.timestamp
    require stor15[msg.sender].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[msg.sender].field_256
    require stor11 > 0
    require stor11
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           stor15[msg.sender].field_256,
           stor11,
           stor15[msg.sender].field_256 * ext_call.return_data[0] / stor11,
           block.timestamp
}

function lockTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if unlockSchedules.length >= stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73446974746f5374616b696e673a2072656163686564206d6178696d756d20756e6c6f636b207363686564756c65,
                    mem[210 len 18]
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == totalLockedShares:
        if ext_call.return_data[0]:
            require ext_code.size(_lockedPoolAddress)
            call _lockedPoolAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _unlockedPoolAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                            mem[212 len 16]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
    else:
        idx = 0
        while idx < unlockSchedules.length:
            mem[0] = 17
            if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
                if block.timestamp >= unlockSchedules[idx].field_768:
                    require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                    unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                    require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                    require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
                else:
                    require unlockSchedules[idx].field_512 <= block.timestamp
                    if not block.timestamp - unlockSchedules[idx].field_512:
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                        require 0 / unlockSchedules[idx].field_1024 >= 0
                    else:
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
            idx = idx + 1
            continue 
        require totalLockedShares > 0
        require totalLockedShares
        require 0 <= totalLockedShares
        if 0 / totalLockedShares:
            require ext_code.size(_lockedPoolAddress)
            call _lockedPoolAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args _unlockedPoolAddress, 0 / totalLockedShares
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                            mem[212 len 16]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    require stor12 <= block.timestamp
    if not block.timestamp - stor12:
        require stor11 >= stor11
    else:
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11 >= stor11
        stor11 = (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11
    stor12 = block.timestamp
    require stor15[msg.sender].field_512 <= block.timestamp
    if not block.timestamp - stor15[msg.sender].field_512:
        require stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
    else:
        require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
        require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
        stor15[msg.sender].field_256 = (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256
    stor15[msg.sender].field_512 = block.timestamp
    if stor11:
        require ext_code.size(_unlockedPoolAddress)
        staticcall _unlockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require stor15[msg.sender].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[msg.sender].field_256
        require stor11 > 0
        require stor11
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_unlockedPoolAddress)
    staticcall _unlockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if not arg1:
            require arg2 + block.timestamp >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = 0
            stor31EC[stor17.length] = 0
            stor31EC[stor17.length] = block.timestamp
            stor31EC[stor17.length] = arg2 + block.timestamp
            stor31EC[stor17.length] = arg2
            require totalLockedShares >= totalLockedShares
        else:
            require stor14 * arg1 / arg1 == stor14
            require arg2 + block.timestamp >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = stor14 * arg1
            stor31EC[stor17.length] = 0
            stor31EC[stor17.length] = block.timestamp
            stor31EC[stor17.length] = arg2 + block.timestamp
            stor31EC[stor17.length] = arg2
            require (stor14 * arg1) + totalLockedShares >= totalLockedShares
            totalLockedShares += stor14 * arg1
    else:
        if not totalLockedShares:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require arg2 + block.timestamp >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = 0 / ext_call.return_data[0]
            stor31EC[stor17.length] = 0
            stor31EC[stor17.length] = block.timestamp
            stor31EC[stor17.length] = arg2 + block.timestamp
            stor31EC[stor17.length] = arg2
            require (0 / ext_call.return_data[0]) + totalLockedShares >= totalLockedShares
            totalLockedShares += 0 / ext_call.return_data[0]
        else:
            require arg1 * totalLockedShares / totalLockedShares == arg1
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require arg2 + block.timestamp >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = arg1 * totalLockedShares / ext_call.return_data[0]
            stor31EC[stor17.length] = 0
            stor31EC[stor17.length] = block.timestamp
            stor31EC[stor17.length] = arg2 + block.timestamp
            stor31EC[stor17.length] = arg2
            require (arg1 * totalLockedShares / ext_call.return_data[0]) + totalLockedShares >= totalLockedShares
            totalLockedShares += arg1 * totalLockedShares / ext_call.return_data[0]
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _lockedPoolAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x73446974746f5374616b696e673a207472616e7366657220696e746f206c6f636b656420706f6f6c206661696c65,
                    mem[370 len 18]
    require ext_code.size(_lockedPoolAddress)
    staticcall _lockedPoolAddress.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensLocked(arg1, arg2, ext_call.return_data[0]);
}

function stakeFor(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6c446974746f5374616b696e673a207374616b6520616d6f756e74206973207a6572,
                    mem[198 len 30]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64446974746f5374616b696e673a2062656e6566696369617279206973207a65726f20616464726573,
                    mem[205 len 23]
    if totalStakingShares:
        require ext_code.size(_stakingPoolAddress)
        staticcall _stakingPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        75,
                        0x64446974746f5374616b696e673a20496e76616c69642073746174652e205374616b696e67207368617265732065786973742c20627574206e6f207374616b696e6720746f6b656e732064,
                        mem[239 len 21]
    if totalStakingShares <= 0:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x6f446974746f5374616b696e673a205374616b6520616d6f756e7420697320746f6f20736d616c,
                        mem[203 len 25]
        require stor14 * arg2 / arg2 == stor14
        if stor14 * arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x6f446974746f5374616b696e673a205374616b6520616d6f756e7420697320746f6f20736d616c,
                        mem[203 len 25]
        require ext_code.size(_lockedPoolAddress)
        staticcall _lockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 == totalLockedShares:
            if ext_call.return_data[0]:
                require ext_code.size(_lockedPoolAddress)
                call _lockedPoolAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args _unlockedPoolAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                mem[212 len 16]
                require ext_code.size(_lockedPoolAddress)
                staticcall _lockedPoolAddress.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
        else:
            idx = 0
            while idx < unlockSchedules.length:
                mem[0] = 17
                if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
                    if block.timestamp >= unlockSchedules[idx].field_768:
                        require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                        unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                        require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                        require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
                    else:
                        require unlockSchedules[idx].field_512 <= block.timestamp
                        if not block.timestamp - unlockSchedules[idx].field_512:
                            require unlockSchedules[idx].field_1024 > 0
                            require unlockSchedules[idx].field_1024
                            unlockSchedules[idx].field_512 = block.timestamp
                            require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                            unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                            require 0 / unlockSchedules[idx].field_1024 >= 0
                        else:
                            require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                            require unlockSchedules[idx].field_1024 > 0
                            require unlockSchedules[idx].field_1024
                            unlockSchedules[idx].field_512 = block.timestamp
                            require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                            unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                            require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                idx = idx + 1
                continue 
            require totalLockedShares > 0
            require totalLockedShares
            require 0 <= totalLockedShares
            if 0 / totalLockedShares:
                require ext_code.size(_lockedPoolAddress)
                call _lockedPoolAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args _unlockedPoolAddress, 0 / totalLockedShares
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                mem[212 len 16]
                require ext_code.size(_lockedPoolAddress)
                staticcall _lockedPoolAddress.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
        require stor12 <= block.timestamp
        if not block.timestamp - stor12:
            require stor11 >= stor11
        else:
            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11 >= stor11
            stor11 = (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11
        stor12 = block.timestamp
        require stor15[msg.sender].field_512 <= block.timestamp
        if not block.timestamp - stor15[msg.sender].field_512:
            require stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
        else:
            require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
            require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
            stor15[msg.sender].field_256 = (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256
        stor15[msg.sender].field_512 = block.timestamp
        if stor11:
            require ext_code.size(_unlockedPoolAddress)
            staticcall _unlockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require stor15[msg.sender].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[msg.sender].field_256
            require stor11 > 0
            require stor11
        require ext_code.size(_lockedPoolAddress)
        staticcall _lockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_unlockedPoolAddress)
        staticcall _unlockedPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (stor14 * arg2) + stor15[address(arg1)].field_0 >= stor15[address(arg1)].field_0
        stor15[address(arg1)].field_0 += stor14 * arg2
        stor15[address(arg1)].field_512 = block.timestamp
        stor16[address(arg1)].field_0++
        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = stor14 * arg2
        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
        require (stor14 * arg2) + totalStakingShares >= totalStakingShares
        totalStakingShares += stor14 * arg2
    else:
        require ext_code.size(_stakingPoolAddress)
        staticcall _stakingPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalStakingShares:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x6f446974746f5374616b696e673a205374616b6520616d6f756e7420697320746f6f20736d616c,
                            mem[203 len 25]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 == totalLockedShares:
                if ext_call.return_data[0]:
                    require ext_code.size(_lockedPoolAddress)
                    call _lockedPoolAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _unlockedPoolAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                    mem[212 len 16]
                    require ext_code.size(_lockedPoolAddress)
                    staticcall _lockedPoolAddress.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
            else:
                idx = 0
                while idx < unlockSchedules.length:
                    mem[0] = 17
                    if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
                        if block.timestamp >= unlockSchedules[idx].field_768:
                            require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                            unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                            require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                            unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                            require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
                        else:
                            require unlockSchedules[idx].field_512 <= block.timestamp
                            if not block.timestamp - unlockSchedules[idx].field_512:
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                require 0 / unlockSchedules[idx].field_1024 >= 0
                            else:
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                    idx = idx + 1
                    continue 
                require totalLockedShares > 0
                require totalLockedShares
                require 0 <= totalLockedShares
                if 0 / totalLockedShares:
                    require ext_code.size(_lockedPoolAddress)
                    call _lockedPoolAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _unlockedPoolAddress, 0 / totalLockedShares
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                    mem[212 len 16]
                    require ext_code.size(_lockedPoolAddress)
                    staticcall _lockedPoolAddress.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
            require stor12 <= block.timestamp
            if not block.timestamp - stor12:
                require stor11 >= stor11
            else:
                require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11 >= stor11
                stor11 = (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11
            stor12 = block.timestamp
            require stor15[msg.sender].field_512 <= block.timestamp
            if not block.timestamp - stor15[msg.sender].field_512:
                require stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
            else:
                require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
                require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
                stor15[msg.sender].field_256 = (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256
            stor15[msg.sender].field_512 = block.timestamp
            if stor11:
                require ext_code.size(_unlockedPoolAddress)
                staticcall _unlockedPoolAddress.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require stor15[msg.sender].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[msg.sender].field_256
                require stor11 > 0
                require stor11
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_unlockedPoolAddress)
            staticcall _unlockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (0 / ext_call.return_data[0]) + stor15[address(arg1)].field_0 >= stor15[address(arg1)].field_0
            stor15[address(arg1)].field_0 += 0 / ext_call.return_data[0]
            stor15[address(arg1)].field_512 = block.timestamp
            stor16[address(arg1)].field_0++
            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
            require (0 / ext_call.return_data[0]) + totalStakingShares >= totalStakingShares
            totalStakingShares += 0 / ext_call.return_data[0]
        else:
            require arg2 * totalStakingShares / totalStakingShares == arg2
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if arg2 * totalStakingShares / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x6f446974746f5374616b696e673a205374616b6520616d6f756e7420697320746f6f20736d616c,
                            mem[203 len 25]
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 == totalLockedShares:
                if ext_call.return_data[0]:
                    require ext_code.size(_lockedPoolAddress)
                    call _lockedPoolAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _unlockedPoolAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                    mem[212 len 16]
                    require ext_code.size(_lockedPoolAddress)
                    staticcall _lockedPoolAddress.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
            else:
                idx = 0
                while idx < unlockSchedules.length:
                    mem[0] = 17
                    if unlockSchedules[idx].field_256 < unlockSchedules[idx].field_0:
                        if block.timestamp >= unlockSchedules[idx].field_768:
                            require unlockSchedules[idx].field_256 <= unlockSchedules[idx].field_0
                            unlockSchedules[idx].field_512 = unlockSchedules[idx].field_768
                            require unlockSchedules[idx].field_0 >= unlockSchedules[idx].field_256
                            unlockSchedules[idx].field_256 = unlockSchedules[idx].field_0
                            require unlockSchedules[idx].field_0 - unlockSchedules[idx].field_256 >= 0
                        else:
                            require unlockSchedules[idx].field_512 <= block.timestamp
                            if not block.timestamp - unlockSchedules[idx].field_512:
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require (0 / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                require 0 / unlockSchedules[idx].field_1024 >= 0
                            else:
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) + unlockSchedules[idx].field_256 >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                    idx = idx + 1
                    continue 
                require totalLockedShares > 0
                require totalLockedShares
                require 0 <= totalLockedShares
                if 0 / totalLockedShares:
                    require ext_code.size(_lockedPoolAddress)
                    call _lockedPoolAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _unlockedPoolAddress, 0 / totalLockedShares
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x6f446974746f5374616b696e673a207472616e73666572206f7574206f66206c6f636b656420706f6f6c206661696c65,
                                    mem[212 len 16]
                    require ext_code.size(_lockedPoolAddress)
                    staticcall _lockedPoolAddress.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
            require stor12 <= block.timestamp
            if not block.timestamp - stor12:
                require stor11 >= stor11
            else:
                require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11 >= stor11
                stor11 = (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) + stor11
            stor12 = block.timestamp
            require stor15[msg.sender].field_512 <= block.timestamp
            if not block.timestamp - stor15[msg.sender].field_512:
                require stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
            else:
                require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) / block.timestamp - stor15[msg.sender].field_512 == stor15[msg.sender].field_0
                require (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256 >= stor15[msg.sender].field_256
                stor15[msg.sender].field_256 = (block.timestamp * stor15[msg.sender].field_0) - (stor15[msg.sender].field_512 * stor15[msg.sender].field_0) + stor15[msg.sender].field_256
            stor15[msg.sender].field_512 = block.timestamp
            if stor11:
                require ext_code.size(_unlockedPoolAddress)
                staticcall _unlockedPoolAddress.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require stor15[msg.sender].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[msg.sender].field_256
                require stor11 > 0
                require stor11
            require ext_code.size(_lockedPoolAddress)
            staticcall _lockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_unlockedPoolAddress)
            staticcall _unlockedPoolAddress.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (arg2 * totalStakingShares / ext_call.return_data[0]) + stor15[address(arg1)].field_0 >= stor15[address(arg1)].field_0
            stor15[address(arg1)].field_0 += arg2 * totalStakingShares / ext_call.return_data[0]
            stor15[address(arg1)].field_512 = block.timestamp
            stor16[address(arg1)].field_0++
            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * totalStakingShares / ext_call.return_data[0]
            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
            require (arg2 * totalStakingShares / ext_call.return_data[0]) + totalStakingShares >= totalStakingShares
            totalStakingShares += arg2 * totalStakingShares / ext_call.return_data[0]
    require ext_code.size(_stakingPoolAddress)
    staticcall _stakingPoolAddress.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _stakingPoolAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    47,
                    0x73446974746f5374616b696e673a207472616e7366657220696e746f207374616b696e6720706f6f6c206661696c65,
                    mem[339 len 17]
    require ext_code.size(stor4)
    call stor4.0xe2bbb158 with:
         gas gas_remaining wei
        args stor6, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalStakingShares <= 0:
        emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                    arg2,
                    0,
                    96,
                    0,
                    mem[352],
                    arg1,
    else:
        require ext_code.size(_stakingPoolAddress)
        staticcall _stakingPoolAddress.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require totalStakingShares > 0
            require totalStakingShares
            emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                        arg2,
                        0 / totalStakingShares,
                        96,
                        0,
                        mem[352],
                        arg1,
        else:
            require stor15[address(arg1)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] == stor15[address(arg1)].field_0
            require totalStakingShares > 0
            require totalStakingShares
            emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                        arg2,
                        stor15[address(arg1)].field_0 * ext_call.return_data[0] / totalStakingShares,
                        96,
                        0,
                        mem[352],
                        arg1,
}



}
