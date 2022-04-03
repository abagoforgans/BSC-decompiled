contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1, bytes arg2)
#  - unstakeQuery(uint256 arg1)
#  - unstake(uint256 arg1, bytes arg2)
#
const BONUS_DECIMALS = 2


address owner;
address stor1;
address stor2;
address stakingTokenAddress;
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
mapping of struct userTotals;
array of struct stor16;
array of struct unlockSchedules;

function userTotals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTotals[arg1].field_0, userTotals[arg1].field_256, userTotals[arg1].field_512
}

function startBonus() payable {
    return startBonus
}

function unlockSchedules(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function stakingToken() payable {
    return stakingTokenAddress
}

function bonusPeriodSec() payable {
    return bonusPeriodSec
}

function totalLockedShares() payable {
    return totalLockedShares
}

function owner() payable {
    return owner
}

function unlockScheduleCount() payable {
    return unlockSchedules.length
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
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalLocked() payable {
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalUnlocked() payable {
    require ext_code.size(stor1)
    staticcall stor1.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalStaked() payable {
    require ext_code.size(stor4)
    staticcall stor4.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function rescueFunds(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getDistributionToken() payable {
    require ext_code.size(stor2)
    staticcall stor2.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function totalStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalStakingShares <= 0:
        return 0
    require ext_code.size(stor4)
    staticcall stor4.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not ext_call.return_data[0]:
        require totalStakingShares > 0
        if totalStakingShares:
            return (0 / totalStakingShares)
    else:
        if ext_call.return_data[0]:
            require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
            require totalStakingShares > 0
            if totalStakingShares:
                return (ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares)
    revert
}

function unlockTokens() payable {
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not totalLockedShares:
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DittoStaking: transfer out of locked pool failed'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                    require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                    require 0 / unlockSchedules[idx].field_1024 >= 0
                else:
                    require block.timestamp - unlockSchedules[idx].field_512
                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                    require unlockSchedules[idx].field_1024 > 0
                    require unlockSchedules[idx].field_1024
                    unlockSchedules[idx].field_512 = block.timestamp
                    require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
        idx = idx + 1
        continue 
    require totalLockedShares > 0
    require totalLockedShares
    require 0 <= totalLockedShares
    if 0 / totalLockedShares > 0:
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, 0 / totalLockedShares
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'DittoStaking: transfer out of locked pool failed'
        require ext_code.size(stor2)
        staticcall stor2.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    return (0 / totalLockedShares)
}

function sub_63b5c805(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if not stor11:
        return 0
    require stor12 <= block.timestamp
    if not block.timestamp - stor12:
        require stor11 >= stor11
        require userTotals[address(arg1)].field_512 <= block.timestamp
        if not block.timestamp - userTotals[address(arg1)].field_512:
            require userTotals[address(arg1)].field_256 >= userTotals[address(arg1)].field_256
            if not uint255(ext_call.return_data[0]):
                require stor11 > 0
                if stor11:
                    return (0 / stor11)
            else:
                if 2 * ext_call.return_data[0]:
                    require (ext_call.return_data[0] * userTotals[address(arg1)].field_256) + (ext_call.return_data[0] * userTotals[address(arg1)].field_256) / 2 * ext_call.return_data[0] == userTotals[address(arg1)].field_256
                    require stor11 > 0
                    if stor11:
                        return ((ext_call.return_data[0] * userTotals[address(arg1)].field_256) + (ext_call.return_data[0] * userTotals[address(arg1)].field_256) / stor11)
        else:
            if block.timestamp - userTotals[address(arg1)].field_512:
                require (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0) / block.timestamp - userTotals[address(arg1)].field_512 == userTotals[address(arg1)].field_0
                require userTotals[address(arg1)].field_256 + (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0) >= userTotals[address(arg1)].field_256
                if not uint255(ext_call.return_data[0]):
                    require stor11 > 0
                    if stor11:
                        return (0 / stor11)
                else:
                    if 2 * ext_call.return_data[0]:
                        require (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) + (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) / 2 * ext_call.return_data[0] == userTotals[address(arg1)].field_256 + (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0)
                        require stor11 > 0
                        if stor11:
                            return ((userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) + (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) / stor11)
    else:
        if block.timestamp - stor12:
            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
            require userTotals[address(arg1)].field_512 <= block.timestamp
            if not block.timestamp - userTotals[address(arg1)].field_512:
                require userTotals[address(arg1)].field_256 >= userTotals[address(arg1)].field_256
                if not uint255(ext_call.return_data[0]):
                    require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) > 0
                    if stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares):
                        return (0 / stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares))
                else:
                    if 2 * ext_call.return_data[0]:
                        require (ext_call.return_data[0] * userTotals[address(arg1)].field_256) + (ext_call.return_data[0] * userTotals[address(arg1)].field_256) / 2 * ext_call.return_data[0] == userTotals[address(arg1)].field_256
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) > 0
                        if stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares):
                            return ((ext_call.return_data[0] * userTotals[address(arg1)].field_256) + (ext_call.return_data[0] * userTotals[address(arg1)].field_256) / stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares))
            else:
                if block.timestamp - userTotals[address(arg1)].field_512:
                    require (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0) / block.timestamp - userTotals[address(arg1)].field_512 == userTotals[address(arg1)].field_0
                    require userTotals[address(arg1)].field_256 + (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0) >= userTotals[address(arg1)].field_256
                    if not uint255(ext_call.return_data[0]):
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) > 0
                        if stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares):
                            return (0 / stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares))
                    else:
                        if 2 * ext_call.return_data[0]:
                            require (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) + (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) / 2 * ext_call.return_data[0] == userTotals[address(arg1)].field_256 + (block.timestamp * userTotals[address(arg1)].field_0) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0)
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) > 0
                            if stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares):
                                return ((userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) + (userTotals[address(arg1)].field_256 * ext_call.return_data[0]) + (block.timestamp * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) - (userTotals[address(arg1)].field_512 * userTotals[address(arg1)].field_0 * ext_call.return_data[0]) / stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares))
    revert
}

function updateAccounting() payable {
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not totalLockedShares:
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DittoStaking: transfer out of locked pool failed'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                        require 0 / unlockSchedules[idx].field_1024 >= 0
                    else:
                        require block.timestamp - unlockSchedules[idx].field_512
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
            idx = idx + 1
            continue 
        require totalLockedShares > 0
        require totalLockedShares
        require 0 <= totalLockedShares
        if 0 / totalLockedShares > 0:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, 0 / totalLockedShares
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DittoStaking: transfer out of locked pool failed'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    require stor12 <= block.timestamp
    if not block.timestamp - stor12:
        require stor11 >= stor11
    else:
        require block.timestamp - stor12
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
    stor12 = block.timestamp
    require userTotals[address(msg.sender)].field_512 <= block.timestamp
    if not block.timestamp - userTotals[address(msg.sender)].field_512:
        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
    else:
        require block.timestamp - userTotals[address(msg.sender)].field_512
        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
    userTotals[address(msg.sender)].field_512 = block.timestamp
    if stor11 <= 0:
        require ext_code.size(stor2)
        staticcall stor2.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return ext_call.return_data[0], ext_call.return_data[0], userTotals[address(msg.sender)].field_256, stor11, 0, block.timestamp
    require ext_code.size(stor1)
    staticcall stor1.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require stor11 > 0
        require stor11
        require ext_code.size(stor2)
        staticcall stor2.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               userTotals[address(msg.sender)].field_256,
               stor11,
               0 / stor11,
               block.timestamp
    require ext_call.return_data[0]
    require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
    require stor11 > 0
    require stor11
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           userTotals[address(msg.sender)].field_256,
           stor11,
           ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / stor11,
           block.timestamp
}

function lockTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    if unlockSchedules.length >= stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DittoStaking: reached maximum unlock schedules'
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not totalLockedShares:
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DittoStaking: transfer out of locked pool failed'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
                        require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                        require 0 / unlockSchedules[idx].field_1024 >= 0
                    else:
                        require block.timestamp - unlockSchedules[idx].field_512
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                        require unlockSchedules[idx].field_1024 > 0
                        require unlockSchedules[idx].field_1024
                        unlockSchedules[idx].field_512 = block.timestamp
                        require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                        unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                        require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
            idx = idx + 1
            continue 
        require totalLockedShares > 0
        require totalLockedShares
        require 0 <= totalLockedShares
        if 0 / totalLockedShares > 0:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, 0 / totalLockedShares
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DittoStaking: transfer out of locked pool failed'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
    require stor12 <= block.timestamp
    if not block.timestamp - stor12:
        require stor11 >= stor11
    else:
        require block.timestamp - stor12
        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
    stor12 = block.timestamp
    require userTotals[address(msg.sender)].field_512 <= block.timestamp
    if not block.timestamp - userTotals[address(msg.sender)].field_512:
        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
    else:
        require block.timestamp - userTotals[address(msg.sender)].field_512
        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
    userTotals[address(msg.sender)].field_512 = block.timestamp
    if stor11 > 0:
        require ext_code.size(stor1)
        staticcall stor1.balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
        require stor11 > 0
        require stor11
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        if not arg1:
            require block.timestamp + arg2 >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = 0
            unlockSchedules[unlockSchedules.length].field_256 = 0
            unlockSchedules[unlockSchedules.length].field_512 = block.timestamp
            unlockSchedules[unlockSchedules.length].field_768 = block.timestamp + arg2
            unlockSchedules[unlockSchedules.length].field_1024 = arg2
            require totalLockedShares >= totalLockedShares
        else:
            require arg1
            require arg1 * stor14 / arg1 == stor14
            require block.timestamp + arg2 >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = arg1 * stor14
            unlockSchedules[unlockSchedules.length].field_256 = 0
            unlockSchedules[unlockSchedules.length].field_512 = block.timestamp
            unlockSchedules[unlockSchedules.length].field_768 = block.timestamp + arg2
            unlockSchedules[unlockSchedules.length].field_1024 = arg2
            require totalLockedShares + (arg1 * stor14) >= totalLockedShares
            totalLockedShares += arg1 * stor14
    else:
        if not totalLockedShares:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require block.timestamp + arg2 >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = 0 / ext_call.return_data[0]
            unlockSchedules[unlockSchedules.length].field_256 = 0
            unlockSchedules[unlockSchedules.length].field_512 = block.timestamp
            unlockSchedules[unlockSchedules.length].field_768 = block.timestamp + arg2
            unlockSchedules[unlockSchedules.length].field_1024 = arg2
            require totalLockedShares + (0 / ext_call.return_data[0]) >= totalLockedShares
            totalLockedShares += 0 / ext_call.return_data[0]
        else:
            require totalLockedShares
            require totalLockedShares * arg1 / totalLockedShares == arg1
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require block.timestamp + arg2 >= block.timestamp
            unlockSchedules.length++
            unlockSchedules[unlockSchedules.length].field_0 = totalLockedShares * arg1 / ext_call.return_data[0]
            unlockSchedules[unlockSchedules.length].field_256 = 0
            unlockSchedules[unlockSchedules.length].field_512 = block.timestamp
            unlockSchedules[unlockSchedules.length].field_768 = block.timestamp + arg2
            unlockSchedules[unlockSchedules.length].field_1024 = arg2
            require totalLockedShares + (totalLockedShares * arg1 / ext_call.return_data[0]) >= totalLockedShares
            totalLockedShares += totalLockedShares * arg1 / ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DittoStaking: transfer into locked pool failed'
    require ext_code.size(stor2)
    staticcall stor2.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit TokensLocked(arg1, arg2, ext_call.return_data[0]);
}

function stakeFor(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DittoStaking: stake amount is zero'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DittoStaking: beneficiary is zero address'
    if not totalStakingShares:
        if totalStakingShares <= 0:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DittoStaking: Stake amount is too small'
            require arg2
            require arg2 * stor14 / arg2 == stor14
            if arg2 * stor14 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DittoStaking: Stake amount is too small'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not totalLockedShares:
                if ext_call.return_data[0] <= 0:
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((7 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((8 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                else:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'DittoStaking: transfer out of locked pool failed'
                    require ext_code.size(stor2)
                    staticcall stor2.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((10 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((11 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
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
                                require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                require 0 / unlockSchedules[idx].field_1024 >= 0
                            else:
                                require block.timestamp - unlockSchedules[idx].field_512
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                    idx = idx + 1
                    continue 
                require totalLockedShares > 0
                require totalLockedShares
                require 0 <= totalLockedShares
                if 0 / totalLockedShares <= 0:
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((7 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((8 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                else:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, 0 / totalLockedShares
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'DittoStaking: transfer out of locked pool failed'
                    require ext_code.size(stor2)
                    staticcall stor2.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((10 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((11 * ceil32(return_data.size)) + 352 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
        else:
            require ext_code.size(stor4)
            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor6, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool(ceil32(return_data.size) + 224 <= test266151307())
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if not totalStakingShares:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'DittoStaking: Stake amount is too small'
                require ext_code.size(stor2)
                staticcall stor2.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not totalLockedShares:
                    if ext_call.return_data[0] <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
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
                                    require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                    require 0 / unlockSchedules[idx].field_1024 >= 0
                                else:
                                    require block.timestamp - unlockSchedules[idx].field_512
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                    require unlockSchedules[idx].field_1024 > 0
                                    require unlockSchedules[idx].field_1024
                                    unlockSchedules[idx].field_512 = block.timestamp
                                    require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                        idx = idx + 1
                        continue 
                    require totalLockedShares > 0
                    require totalLockedShares
                    require 0 <= totalLockedShares
                    if 0 / totalLockedShares <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0 / totalLockedShares
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
            else:
                require totalStakingShares
                require totalStakingShares * arg2 / totalStakingShares == arg2
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if totalStakingShares * arg2 / ext_call.return_data[0] <= 0:
                    revert with 0, 'DittoStaking: Stake amount is too small'
                require ext_code.size(stor2)
                staticcall stor2.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not totalLockedShares:
                    if ext_call.return_data[0] <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
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
                                    require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                    require 0 / unlockSchedules[idx].field_1024 >= 0
                                else:
                                    require block.timestamp - unlockSchedules[idx].field_512
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                    require unlockSchedules[idx].field_1024 > 0
                                    require unlockSchedules[idx].field_1024
                                    unlockSchedules[idx].field_512 = block.timestamp
                                    require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                        idx = idx + 1
                        continue 
                    require totalLockedShares > 0
                    require totalLockedShares
                    require 0 <= totalLockedShares
                    if 0 / totalLockedShares <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0 / totalLockedShares
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
    else:
        require ext_code.size(stor4)
        staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor6, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool(ceil32(return_data.size) + 224 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'DittoStaking: Invalid state. Staking shares exist, but no staking tokens do'
        if totalStakingShares <= 0:
            if not arg2:
                revert with 0, 'DittoStaking: Stake amount is too small'
            require arg2
            require arg2 * stor14 / arg2 == stor14
            if arg2 * stor14 <= 0:
                revert with 0, 'DittoStaking: Stake amount is too small'
            require ext_code.size(stor2)
            staticcall stor2.balance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not totalLockedShares:
                if ext_call.return_data[0] <= 0:
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                else:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'DittoStaking: transfer out of locked pool failed'
                    require ext_code.size(stor2)
                    staticcall stor2.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
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
                                require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                require 0 / unlockSchedules[idx].field_1024 >= 0
                            else:
                                require block.timestamp - unlockSchedules[idx].field_512
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                require unlockSchedules[idx].field_1024 > 0
                                require unlockSchedules[idx].field_1024
                                unlockSchedules[idx].field_512 = block.timestamp
                                require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                    idx = idx + 1
                    continue 
                require totalLockedShares > 0
                require totalLockedShares
                require 0 <= totalLockedShares
                if 0 / totalLockedShares <= 0:
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((10 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                else:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, 0 / totalLockedShares
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'DittoStaking: transfer out of locked pool failed'
                    require ext_code.size(stor2)
                    staticcall stor2.balance() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                    require stor12 <= block.timestamp
                    if not block.timestamp - stor12:
                        require stor11 >= stor11
                    else:
                        require block.timestamp - stor12
                        require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                        require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                        stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                    stor12 = block.timestamp
                    require userTotals[address(msg.sender)].field_512 <= block.timestamp
                    if not block.timestamp - userTotals[address(msg.sender)].field_512:
                        require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                    else:
                        require block.timestamp - userTotals[address(msg.sender)].field_512
                        require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                        require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                        userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                    userTotals[address(msg.sender)].field_512 = block.timestamp
                    if stor11 <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                        require stor11 > 0
                        require stor11
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor1)
                        staticcall stor1.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require userTotals[address(arg1)].field_0 + (arg2 * stor14) >= userTotals[address(arg1)].field_0
                        userTotals[address(arg1)].field_0 += arg2 * stor14
                        userTotals[address(arg1)].field_512 = block.timestamp
                        stor16[address(arg1)].field_0++
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = arg2 * stor14
                        stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                        require totalStakingShares + (arg2 * stor14) >= totalStakingShares
                        totalStakingShares += arg2 * stor14
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer into staking pool failed'
                        require ext_code.size(stor4)
                        call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                        arg1,
                        else:
                            require ext_code.size(stor4)
                            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor6, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            if not ext_call.return_data[0]:
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
                            else:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                require totalStakingShares > 0
                                require totalStakingShares
                                emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                            arg2,
                                            ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                            96,
                                            0,
                                            arg1,
        else:
            require ext_code.size(stor4)
            staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor6, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((2 * ceil32(return_data.size)) + 352 <= test266151307())
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if not totalStakingShares:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'DittoStaking: Stake amount is too small'
                require ext_code.size(stor2)
                staticcall stor2.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not totalLockedShares:
                    if ext_call.return_data[0] <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((13 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
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
                                    require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                    require 0 / unlockSchedules[idx].field_1024 >= 0
                                else:
                                    require block.timestamp - unlockSchedules[idx].field_512
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                    require unlockSchedules[idx].field_1024 > 0
                                    require unlockSchedules[idx].field_1024
                                    unlockSchedules[idx].field_512 = block.timestamp
                                    require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                        idx = idx + 1
                        continue 
                    require totalLockedShares > 0
                    require totalLockedShares
                    require 0 <= totalLockedShares
                    if 0 / totalLockedShares <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0 / totalLockedShares
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (0 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += 0 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = 0 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (0 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += 0 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((13 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
            else:
                require totalStakingShares
                require totalStakingShares * arg2 / totalStakingShares == arg2
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if totalStakingShares * arg2 / ext_call.return_data[0] <= 0:
                    revert with 0, 'DittoStaking: Stake amount is too small'
                require ext_code.size(stor2)
                staticcall stor2.balance() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not totalLockedShares:
                    if ext_call.return_data[0] <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(ext_call.return_data[0], ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((13 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
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
                                    require unlockSchedules[idx].field_256 + (0 / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += 0 / unlockSchedules[idx].field_1024
                                    require 0 / unlockSchedules[idx].field_1024 >= 0
                                else:
                                    require block.timestamp - unlockSchedules[idx].field_512
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / block.timestamp - unlockSchedules[idx].field_512 == unlockSchedules[idx].field_0
                                    require unlockSchedules[idx].field_1024 > 0
                                    require unlockSchedules[idx].field_1024
                                    unlockSchedules[idx].field_512 = block.timestamp
                                    require unlockSchedules[idx].field_256 + ((block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024) >= unlockSchedules[idx].field_256
                                    unlockSchedules[idx].field_256 += (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024
                                    require (block.timestamp * unlockSchedules[idx].field_0) - (unlockSchedules[idx].field_512 * unlockSchedules[idx].field_0) / unlockSchedules[idx].field_1024 >= 0
                        idx = idx + 1
                        continue 
                    require totalLockedShares > 0
                    require totalLockedShares
                    require 0 <= totalLockedShares
                    if 0 / totalLockedShares <= 0:
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((10 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((11 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                    else:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, 0 / totalLockedShares
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'DittoStaking: transfer out of locked pool failed'
                        require ext_code.size(stor2)
                        staticcall stor2.balance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        emit TokensUnlocked(0 / totalLockedShares, ext_call.return_data[0]);
                        require stor12 <= block.timestamp
                        if not block.timestamp - stor12:
                            require stor11 >= stor11
                        else:
                            require block.timestamp - stor12
                            require (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) / block.timestamp - stor12 == totalStakingShares
                            require stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares) >= stor11
                            stor11 = stor11 + (block.timestamp * totalStakingShares) - (stor12 * totalStakingShares)
                        stor12 = block.timestamp
                        require userTotals[address(msg.sender)].field_512 <= block.timestamp
                        if not block.timestamp - userTotals[address(msg.sender)].field_512:
                            require userTotals[address(msg.sender)].field_256 >= userTotals[address(msg.sender)].field_256
                        else:
                            require block.timestamp - userTotals[address(msg.sender)].field_512
                            require (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) / block.timestamp - userTotals[address(msg.sender)].field_512 == userTotals[address(msg.sender)].field_0
                            require userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0) >= userTotals[address(msg.sender)].field_256
                            userTotals[address(msg.sender)].field_256 = userTotals[address(msg.sender)].field_256 + (block.timestamp * userTotals[address(msg.sender)].field_0) - (userTotals[address(msg.sender)].field_512 * userTotals[address(msg.sender)].field_0)
                        userTotals[address(msg.sender)].field_512 = block.timestamp
                        if stor11 <= 0:
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((12 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0]
                                require ext_call.return_data[0] * userTotals[address(msg.sender)].field_256 / ext_call.return_data[0] == userTotals[address(msg.sender)].field_256
                            require stor11 > 0
                            require stor11
                            require ext_code.size(stor2)
                            staticcall stor2.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(stor1)
                            staticcall stor1.balance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require userTotals[address(arg1)].field_0 + (totalStakingShares * arg2 / ext_call.return_data[0]) >= userTotals[address(arg1)].field_0
                            userTotals[address(arg1)].field_0 += totalStakingShares * arg2 / ext_call.return_data[0]
                            userTotals[address(arg1)].field_512 = block.timestamp
                            stor16[address(arg1)].field_0++
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_0 = totalStakingShares * arg2 / ext_call.return_data[0]
                            stor16[address(arg1)][stor16[address(arg1)].field_0].field_256 = block.timestamp
                            require totalStakingShares + (totalStakingShares * arg2 / ext_call.return_data[0]) >= totalStakingShares
                            totalStakingShares += totalStakingShares * arg2 / ext_call.return_data[0]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'DittoStaking: transfer into staking pool failed'
                            require ext_code.size(stor4)
                            call stor4.deposit(uint256 rg1, uint256 rg2) with:
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
                                            arg1,
                            else:
                                require ext_code.size(stor4)
                                staticcall stor4.userInfo(uint256 rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor6, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require bool((13 * ceil32(return_data.size)) + 608 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                if not ext_call.return_data[0]:
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
                                else:
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0] * userTotals[address(arg1)].field_0 / ext_call.return_data[0] == userTotals[address(arg1)].field_0
                                    require totalStakingShares > 0
                                    require totalStakingShares
                                    emit Staked(address rg1, uint256 rg2, uint256 rg3, bytes rg4):
                                                arg2,
                                                ext_call.return_data[0] * userTotals[address(arg1)].field_0 / totalStakingShares,
                                                96,
                                                0,
                                                arg1,
}



}
