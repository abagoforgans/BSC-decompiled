contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1, uint256 arg2, uint256 arg3)
#  - exit(uint256 arg1)
#  - invest(address arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2)
#
uint256 totalProductivity;
uint256 interestsPerBlock;
uint256 totalShare;
uint256 mintedShare;
uint256 mintCumulation;
uint256 stor5;
address shareTokenAddress;
mapping of struct users;
address interestTokenAddress;
address collateralTokenAddress;
address poolAddress;
address masterChefAddress;
uint32 stor12;
uint256 sub_e33b79e1;

function totalShare() payable {
    return totalShare
}

function poolAddress() payable {
    return poolAddress
}

function accAmountPerShare() payable {
    return interestsPerBlock
}

function masterChef() payable {
    return masterChefAddress
}

function shareToken() payable {
    return shareTokenAddress
}

function interestToken() payable {
    return interestTokenAddress
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
}

function collateralToken() payable {
    return collateralTokenAddress
}

function totalProductivity() payable {
    return totalProductivity
}

function interestsPerBlock() payable {
    return interestsPerBlock
}

function mintCumulation() payable {
    return mintCumulation
}

function mintedShare() payable {
    return mintedShare
}

function sub_e33b79e1(?) payable {
    return uint256(sub_e33b79e1)
}

function _fallback() payable {
    revert
}

function getProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)].field_0, totalProductivity
}

function query() payable {
    if not totalProductivity:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256)
        if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if users[address(msg.sender)].field_512 + (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) < interestsPerBlock * users[address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: addition overflow'
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512 + (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (users[address(msg.sender)].field_512 + (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256)
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint256(sub_e33b79e1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + mintedShare < mintedShare:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalShare > (2 * ext_call.return_data[0]) + mintedShare:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (2 * ext_call.return_data[0]) + mintedShare - totalShare:
        if not totalProductivity:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256)
        if (0 / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != (0 / totalProductivity) + interestsPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if users[address(msg.sender)].field_512 + ((0 / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) < (0 / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12:
            revert with 0, 'SafeMath: addition overflow'
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512 + ((0 / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (users[address(msg.sender)].field_512 + ((0 / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256)
    if (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / (2 * ext_call.return_data[0]) + mintedShare - totalShare != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalProductivity:
        revert with 0, 'SafeMath: division by zero', 0
    if ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not users[address(msg.sender)].field_0:
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256)
    if ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock:
        revert with 0, 'SafeMath: multiplication overflow'
    if users[address(msg.sender)].field_512 + (((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) < ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512 + (((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (users[address(msg.sender)].field_512 + (((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256)
}

function liquidation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if poolAddress != msg.sender:
        revert with 0, 'INVALID CALLER'
    if not users[address(arg1)].field_0:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    if users[address(arg1)].field_0 > users[address(arg1)].field_0:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint256(sub_e33b79e1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + mintedShare < mintedShare:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalShare > (2 * ext_call.return_data[0]) + mintedShare:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not totalProductivity:
        if (2 * ext_call.return_data[0]) + mintedShare < totalShare:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not (2 * ext_call.return_data[0]) + mintedShare - totalShare:
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += 0 / totalProductivity
        else:
            if (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / (2 * ext_call.return_data[0]) + mintedShare - totalShare != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity
    totalShare = (2 * ext_call.return_data[0]) + mintedShare
    if users[address(arg1)].field_0:
        if not users[address(arg1)].field_0:
            if users[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -users[address(arg1)].field_256 + users[address(arg1)].field_512 < users[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            users[address(arg1)].field_512 -= users[address(arg1)].field_256
            if -users[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation -= users[address(arg1)].field_256
        else:
            if interestsPerBlock * users[address(arg1)].field_0 / users[address(arg1)].field_0 != interestsPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            if users[address(arg1)].field_256 > interestsPerBlock * users[address(arg1)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (interestsPerBlock * users[address(arg1)].field_0 / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512 < users[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            users[address(arg1)].field_512 = (interestsPerBlock * users[address(arg1)].field_0 / 10^12) - users[address(arg1)].field_256 + users[address(arg1)].field_512
            if (interestsPerBlock * users[address(arg1)].field_0 / 10^12) - users[address(arg1)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation = (interestsPerBlock * users[address(arg1)].field_0 / 10^12) - users[address(arg1)].field_256 + mintCumulation
        if not users[address(arg1)].field_0:
            users[address(arg1)].field_256 = 0
        else:
            if interestsPerBlock * users[address(arg1)].field_0 / users[address(arg1)].field_0 != interestsPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            users[address(arg1)].field_256 = interestsPerBlock * users[address(arg1)].field_0 / 10^12
    if users[address(arg1)].field_0 > users[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    users[address(arg1)].field_0 = 0
    users[address(arg1)].field_256 = 0
    if users[address(arg1)].field_0 > totalProductivity:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalProductivity -= users[address(arg1)].field_0
    if users[address(arg1)].field_512 + users[msg.sender].field_512 < users[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    users[msg.sender].field_512 += users[address(arg1)].field_512
    users[arg1].field_512 = 0
    if users[address(arg1)].field_0 <= 0:
        revert with 0, 'PRODUCTIVITY_VALUE_MUST_BE_GREATER_THAN_ZERO'
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint256(sub_e33b79e1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + mintedShare < mintedShare:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalShare > (2 * ext_call.return_data[0]) + mintedShare:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not totalProductivity:
        if (2 * ext_call.return_data[0]) + mintedShare < totalShare:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not (2 * ext_call.return_data[0]) + mintedShare - totalShare:
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += 0 / totalProductivity
        else:
            if (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / (2 * ext_call.return_data[0]) + mintedShare - totalShare != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity
    totalShare = (2 * ext_call.return_data[0]) + mintedShare
    if users[address(msg.sender)].field_0:
        if not users[address(msg.sender)].field_0:
            if users[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
            if -users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation -= users[address(msg.sender)].field_256
        else:
            if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            if users[address(msg.sender)].field_256 > interestsPerBlock * users[address(msg.sender)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            users[address(msg.sender)].field_512 = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512
            if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                revert with 0, 'SafeMath: addition overflow'
            mintCumulation = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation
        if not users[address(msg.sender)].field_0:
            users[address(msg.sender)].field_256 = 0
        else:
            if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            users[address(msg.sender)].field_256 = interestsPerBlock * users[address(msg.sender)].field_0 / 10^12
    if users[address(arg1)].field_0 + totalProductivity < totalProductivity:
        revert with 0, 'SafeMath: addition overflow'
    totalProductivity += users[address(arg1)].field_0
    if users[address(arg1)].field_0 + users[address(msg.sender)].field_0 < users[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    users[address(msg.sender)].field_0 += users[address(arg1)].field_0
    if not users[address(arg1)].field_0 + users[address(msg.sender)].field_0:
        users[address(msg.sender)].field_256 = 0
    else:
        if (users[address(arg1)].field_0 * interestsPerBlock) + (users[address(msg.sender)].field_0 * interestsPerBlock) / users[address(arg1)].field_0 + users[address(msg.sender)].field_0 != interestsPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        users[address(msg.sender)].field_256 = (users[address(arg1)].field_0 * interestsPerBlock) + (users[address(msg.sender)].field_0 * interestsPerBlock) / 10^12
}

function mint() payable {
    require ext_code.size(masterChefAddress)
    call masterChefAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args uint256(sub_e33b79e1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5 != 1:
        revert with 0, 'Locked'
    stor5 = 0
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint256(sub_e33b79e1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + mintedShare < mintedShare:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalShare > (2 * ext_call.return_data[0]) + mintedShare:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not totalProductivity:
        if (2 * ext_call.return_data[0]) + mintedShare < totalShare:
            revert with 0, 'SafeMath: addition overflow'
        totalShare = (2 * ext_call.return_data[0]) + mintedShare
        if not users[address(msg.sender)].field_0:
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[(2 * ceil32(return_data.size)) + 260 len 28]
            call shareTokenAddress.mem[(2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), address(this.address) << 64 == bool(uint32(stor12), address(this.address) << 64)
                    if not uint32(stor12), address(this.address) << 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not users[address(msg.sender)].field_0:
                if users[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
                if -users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation -= users[address(msg.sender)].field_256
            else:
                if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                if users[address(msg.sender)].field_256 > interestsPerBlock * users[address(msg.sender)].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512
                if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation
            if not users[address(msg.sender)].field_0:
                users[address(msg.sender)].field_256 = 0
            else:
                if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = interestsPerBlock * users[address(msg.sender)].field_0 / 10^12
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[(2 * ceil32(return_data.size)) + 452 len 28]
            call shareTokenAddress.mem[(2 * ceil32(return_data.size)) + 452 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 456 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), address(this.address) << 64 == bool(uint32(stor12), address(this.address) << 64)
                    if not uint32(stor12), address(this.address) << 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                    if not mem[(2 * ceil32(return_data.size)) + 484]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        if not (2 * ext_call.return_data[0]) + mintedShare - totalShare:
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += 0 / totalProductivity
        else:
            if (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / (2 * ext_call.return_data[0]) + mintedShare - totalShare != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if ((2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += (2 * 10^12 * ext_call.return_data[0]) + (10^12 * mintedShare) - (10^12 * totalShare) / totalProductivity
        totalShare = (2 * ext_call.return_data[0]) + mintedShare
        if not users[address(msg.sender)].field_0:
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[(2 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[(2 * ceil32(return_data.size)) + 324 len 28]
            call shareTokenAddress.mem[(2 * ceil32(return_data.size)) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), address(this.address) << 64 == bool(uint32(stor12), address(this.address) << 64)
                    if not uint32(stor12), address(this.address) << 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                    if not mem[(2 * ceil32(return_data.size)) + 356]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not users[address(msg.sender)].field_0:
                if users[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 -= users[address(msg.sender)].field_256
                if -users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation -= users[address(msg.sender)].field_256
            else:
                if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                if users[address(msg.sender)].field_256 > interestsPerBlock * users[address(msg.sender)].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512 < users[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                users[address(msg.sender)].field_512 = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + users[address(msg.sender)].field_512
                if (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation < mintCumulation:
                    revert with 0, 'SafeMath: addition overflow'
                mintCumulation = (interestsPerBlock * users[address(msg.sender)].field_0 / 10^12) - users[address(msg.sender)].field_256 + mintCumulation
            if not users[address(msg.sender)].field_0:
                users[address(msg.sender)].field_256 = 0
            else:
                if interestsPerBlock * users[address(msg.sender)].field_0 / users[address(msg.sender)].field_0 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = interestsPerBlock * users[address(msg.sender)].field_0 / 10^12
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[(2 * ceil32(return_data.size)) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[(2 * ceil32(return_data.size)) + 516 len 28]
            call shareTokenAddress.mem[(2 * ceil32(return_data.size)) + 516 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 520 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), address(this.address) << 64 == bool(uint32(stor12), address(this.address) << 64)
                    if not uint32(stor12), address(this.address) << 64:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 548] == bool(mem[(2 * ceil32(return_data.size)) + 548])
                    if not mem[(2 * ceil32(return_data.size)) + 548]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    users[address(msg.sender)].field_512 = 0
    mintedShare += users[address(msg.sender)].field_512
    stor5 = 1
    emit Mint(users[address(msg.sender)].field_512, msg.sender);
}



}
